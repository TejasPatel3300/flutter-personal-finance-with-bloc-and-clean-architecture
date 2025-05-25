import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance_tracker/domain/transaction/models/transaction_with_category.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

part 'search_and_filter_bloc.freezed.dart';

part 'search_and_filter_event.dart';

part 'search_and_filter_state.dart';

class SearchAndFilterBloc extends Bloc<SearchAndFilterEvent, SearchAndFilterState> {
  final List<TransactionWithCategoryName> _allTransactions;

  SearchAndFilterBloc(List<TransactionWithCategoryName> allTransactions)
      : _allTransactions = allTransactions,
        super(SearchAndFilterState.initial([...allTransactions])) {
    on<SearchAndFilterApplied>(_onAppliedFilter, transformer: restartable());
  }

  Future<void> _onAppliedFilter(SearchAndFilterApplied event, Emitter emit) async {
    final currentTransactions = state.currentTransactionsList;
    try {
      emit(SearchAndFilterState.loading(currentTransactions));
      final type = event.type;
      final category = event.category;
      final searchQuery = event.searchString;
      final shouldCheckType = event.type?.isNotEmpty ?? false;
      final shouldCheckCategory = event.category?.isNotEmpty ?? false;
      final shouldCheckSearchQuery = event.searchString?.isNotEmpty ?? false;

      List<TransactionWithCategoryName> result = [..._allTransactions];
      if (shouldCheckType) {
        result = result.where((transaction) => transaction.type.name.toLowerCase() == type?.toLowerCase()).toList();
      }
      if (shouldCheckCategory) {
        result = result.where((transaction) => transaction.categoryName == category).toList();
      }
      if (shouldCheckSearchQuery) {
        result = result.where((transaction) => transaction.description?.contains(searchQuery ?? '') ?? false).toList();
      }
      emit(SearchAndFilterState.success(result));
    } on Exception catch (e, stackTrace) {
      if (kDebugMode) {
        log('SearchAndFilterEvent: $e \nStacktrace:\n$stackTrace');
      }
      emit(SearchAndFilterState.failure(Failure(message: 'Something went wrong!'), currentTransactions));
    }
  }
}
