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
      List<TransactionWithCategoryName> result = _allTransactions.where((transaction) {
        final matchesType =
            (event.type?.isNotEmpty ?? false) ? transaction.type.name.toLowerCase() == event.type!.toLowerCase() : true;

        final matchesCategory =
            (event.category?.isNotEmpty ?? false) ? transaction.categoryName == event.category : true;

        final matchesSearch = (event.searchString?.isNotEmpty ?? false)
            ? (transaction.description?.toLowerCase().contains(event.searchString!.toLowerCase()) ?? false)
            : true;

        return matchesType && matchesCategory && matchesSearch;
      }).toList();
      emit(SearchAndFilterState.success(result));
    } on Exception catch (e, stackTrace) {
      if (kDebugMode) {
        log('SearchAndFilterEvent: $e \nStacktrace:\n$stackTrace');
      }
      emit(SearchAndFilterState.failure(Failure(message: 'Something went wrong!'), currentTransactions));
    }
  }
}
