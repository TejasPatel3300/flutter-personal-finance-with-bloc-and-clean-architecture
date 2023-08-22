import 'package:floor/floor.dart';

@Entity(tableName: 'budget_categories')
class BudgetCategoryEntity {
  @PrimaryKey(autoGenerate: true)
  final int id;

  final String name;
  final double limit;

  BudgetCategoryEntity(this.id, this.name, this.limit);
}