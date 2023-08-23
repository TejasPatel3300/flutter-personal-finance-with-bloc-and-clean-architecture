import 'package:floor/floor.dart';

@Entity(tableName: 'budget_limits')
class BudgetLimitEntity {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'budget_id')
  final int budgetId;

  @ColumnInfo(name: 'category_id')
  final int categoryId;

  final double limit;

  BudgetLimitEntity({
    required this.id,
    required this.budgetId,
    required this.categoryId,
    required this.limit,
  });
}
