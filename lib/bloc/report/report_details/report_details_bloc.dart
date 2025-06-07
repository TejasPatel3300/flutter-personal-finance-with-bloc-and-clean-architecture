import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/models/transaction_with_category.dart';
import 'package:personal_finance_tracker/presentation/model/monthly_report.dart';

part 'report_details_bloc.freezed.dart';

part 'report_details_event.dart';

part 'report_details_state.dart';

class ReportDetailsBloc extends Bloc<ReportDetailsEvent, ReportDetailsState> {
  final List<TransactionWithCategoryName> _allTransactions;

  ReportDetailsBloc({required List<TransactionWithCategoryName> allTransactions})
      : _allTransactions = allTransactions,
        super(ReportDetailsState.initial(report: MonthlyReport.empty())) {
    on<ReportEventFetch>(_onFetchRequest);
    on<ReportEventUpdate>((event, emit) {
      _allTransactions
        ..clear()
        ..addAll(event.updatedTransactions);
      add(ReportEventFetch(monthStartDate: state.report.startDateOfMonth));
    });
  }

  Future<void> _onFetchRequest(ReportEventFetch event, Emitter<ReportDetailsState> emit) async {
    try {
      emit(ReportDetailsState.loading(report: state.report));
      final List<DailySpending> dailySpendingOverview = [];
      final List<SpendingByCategory> categorySpendingOverview = [];
      double totalExpenseForMonth = 0;
      double totalIncomeForMonth = 0;

      final transactionsForMonth = _allTransactions
          .where(
            (element) =>
                element.date.month == event.monthStartDate.month && element.date.year == event.monthStartDate.year,
          )
          .toList();

      final groupedByDate =
          groupBy<TransactionWithCategoryName, DateTime>(transactionsForMonth, (transaction) => transaction.date);


      for (final transaction in transactionsForMonth) {
        if (transaction.type == TransactionType.expense) {
          totalExpenseForMonth = totalExpenseForMonth + transaction.amount;
        } else if (transaction.type == TransactionType.income) {
          totalIncomeForMonth = totalIncomeForMonth + transaction.amount;
        }
      }

      groupedByDate.forEach(
        (date, transactions) {
          final dailySpending = DailySpending(
            date: date,
            totalSpendingForDay: transactions.fold(0, (previousValue, transaction) => previousValue + transaction.amount),
          );
          dailySpendingOverview.add(dailySpending);
        },
      );

      final groupedByCategory = groupBy<TransactionWithCategoryName, String>(
          transactionsForMonth, (transaction) => transaction.categoryName ?? '');
      groupedByCategory.forEach(
        (category, transactions) {
          final spendingByCategory = SpendingByCategory(
            categoryColor: transactions.isNotEmpty ? (transactions.first.color ?? '#000000') : '#000000',
            categoryName: category,
            totalSpendingForCategory:
                transactions.fold(0, (previousValue, transaction) => previousValue + transaction.amount),
          );
          categorySpendingOverview.add(spendingByCategory);
        },
      );
      final report = MonthlyReport(
        startDateOfMonth: event.monthStartDate,
        income: totalIncomeForMonth,
        expense: totalExpenseForMonth,
        dailySpendingOverview: dailySpendingOverview,
        categorySpendingOverview: categorySpendingOverview,
      );
      emit(ReportDetailsState.success(report: report));
      print(report.toString());
    } on Exception catch (e) {
      emit(ReportDetailsState.error(report: state.report));
    }
  }
}
