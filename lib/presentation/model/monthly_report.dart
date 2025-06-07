
class MonthlyReport {
  final DateTime startDateOfMonth;
  final double income;
  final double expense;
  final List<DailySpending> dailySpendingOverview;
  final List<SpendingByCategory> categorySpendingOverview;

  MonthlyReport({
    required this.startDateOfMonth,
    required this.income,
    required this.expense,
    required this.dailySpendingOverview,
    required this.categorySpendingOverview,
  });

  MonthlyReport.empty()
      : startDateOfMonth = DateTime.now(),
        income = 0,
        expense = 0,
        dailySpendingOverview = [],
        categorySpendingOverview = [];

  @override
  String toString() {
    return '\nMonthly Report: $startDateOfMonth: \nincome: $income \nexpense: $expense \ndailySpendingOverview: $dailySpendingOverview, \ncategorySpendingOverview: $categorySpendingOverview\n';
  }
}

class DailySpending {
  final DateTime date;
  final double totalSpendingForDay;

  DailySpending({required this.date, required this.totalSpendingForDay});
  @override
  String toString() {
    return '\nDailySpending: $date: \ntotalSpendingForDay: $totalSpendingForDay\n';
  }
}

class SpendingByCategory {
  final String categoryName;
  final String categoryColor;
  final double totalSpendingForCategory;

  SpendingByCategory({required this.categoryName, required this.categoryColor, required this.totalSpendingForCategory});

  @override
  String toString() {
    return '\nSpendingByCategory: $categoryName: \ncategoryColor: $categoryColor \ntotalSpendingForCategory: $totalSpendingForCategory\n';
  }
}
