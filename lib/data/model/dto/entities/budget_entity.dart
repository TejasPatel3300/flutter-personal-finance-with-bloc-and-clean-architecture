import 'package:floor/floor.dart';

@Entity(tableName: 'budget')
class BudgetEntity {
  @PrimaryKey(autoGenerate: true)
  final int id;

  final double monthlyBudget;

  BudgetEntity({required this.id, required this.monthlyBudget});
}