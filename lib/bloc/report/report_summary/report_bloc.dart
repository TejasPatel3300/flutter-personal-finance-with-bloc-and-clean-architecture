import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/models/transaction_with_category.dart';

part 'report_event.dart';

part 'report_state.dart';

part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final List<TransactionWithCategoryName> _allTransactions;

  ReportBloc({required List<TransactionWithCategoryName> allTransactions})
      : _allTransactions = allTransactions,
        super(ReportState.initial(data: {})) {
    print('report bloc initialized');
    on<ReportEventFetch>((event, emit) {
      emit(ReportState.loading(data: state.data));
      final result = _sortByCategory();
      emit(ReportState.success(data: result));

    });
    on<ReportEventUpdate>((event, emit) {
      _allTransactions..clear()..addAll(event.updatedTransactions);
      add(ReportEventFetch());
      // TODO: implement event handler
    });
  }

  Map<String?, List<TransactionWithCategoryName>> _sortByCategory() {
    final expenseTransactionsList = [..._allTransactions]
      ..removeWhere((element) => element.type != TransactionType.expense);
    final groupedList = groupBy<TransactionWithCategoryName, String?>(expenseTransactionsList, (item) => item.categoryName);
    return groupedList;
  }

  @override
  Future<void> close() {
    print('Report bloc closed');
    return super.close();
  }
}
