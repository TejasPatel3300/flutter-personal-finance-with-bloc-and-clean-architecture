import 'package:personal_finance_app/domain/models/budget.dart';

class BudgetUIModel {
  final int? id;
  final double monthlyBudget;
  final double necessitiesAllocation;
  final double entertainmentAllocation;
  final double investmentAllocation;
    final int month;
  final int year;
  final String? createdAt;
  final String? updatedAt;

  BudgetUIModel({
    this.id,
    required this.monthlyBudget,
    required this.necessitiesAllocation,
    required this.entertainmentAllocation,
    required this.investmentAllocation,
    required this.month,
    required this.year,
    this.createdAt,
    this.updatedAt,
  });

  BudgetUIModel.fromBudget(Budget budget)
      : id = budget.id,
        monthlyBudget = budget.monthlyBudget,
        necessitiesAllocation = budget.necessitiesAllocation,
        entertainmentAllocation = budget.entertainmentAllocation,
        investmentAllocation = budget.investmentAllocation,
        month = budget.month,
        year = budget.year,
        createdAt = budget.createdAt,
        updatedAt = budget.updatedAt;

  Budget toBudget() => Budget(
        id: id,
        userId: 0, //todo: fix the static value for user-id in domain level budget model
        monthlyBudget: monthlyBudget,
        necessitiesAllocation: necessitiesAllocation,
        entertainmentAllocation: entertainmentAllocation,
        investmentAllocation: investmentAllocation,
        year: year,
        month: month,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
