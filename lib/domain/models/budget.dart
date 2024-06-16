class Budget {
  final int? id;
  final int userId;
  final double monthlyBudget;
  final double necessitiesAllocation;
  final double entertainmentAllocation;
  final double investmentAllocation;
  final int month;
  final int year;
  final String? createdAt;
  final String? updatedAt;

  Budget({
    this.id,
    required this.userId,
    required this.monthlyBudget,
    required this.necessitiesAllocation,
    required this.entertainmentAllocation,
    required this.investmentAllocation,
    required this.month,
    required this.year,
    this.createdAt,
    this.updatedAt,
  });
}
