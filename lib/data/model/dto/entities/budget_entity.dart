import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/user_entity.dart';
import 'package:personal_finance_app/domain/models/budget.dart';

@Entity(foreignKeys: [
  ForeignKey(
    childColumns: ['userId'],
    parentColumns: ['id'],
    entity: UserEntity,
  )
])
class BudgetEntity {
  @PrimaryKey(autoGenerate: true)
  int? id;
  final int userId;
  final double monthlyBudget;
  final double necessitiesAllocation;
  final double entertainmentAllocation;
  final double investmentAllocation;
  final int month;
  final int year;
  final String? createdAt;
  final String? updatedAt;

  BudgetEntity({
    this.id,
    required this.userId,
    required this.necessitiesAllocation,
    required this.entertainmentAllocation,
    required this.investmentAllocation,
    required this.monthlyBudget,
    required this.month,
    required this.year,
    this.createdAt,
    this.updatedAt,
  });

  BudgetEntity.fromBudget(Budget budget)
      : id = budget.id,
        userId = budget.userId,
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
        userId: userId,
        monthlyBudget: monthlyBudget,
        necessitiesAllocation: necessitiesAllocation,
        entertainmentAllocation: entertainmentAllocation,
        investmentAllocation: investmentAllocation,
        month: month,
        year: year,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
