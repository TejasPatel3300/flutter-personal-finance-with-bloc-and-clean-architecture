import 'package:floor/floor.dart';

import '../../model/dto/entities/budget_category_entity.dart';

@dao
abstract class BudgetCategoryDao {
  @Query('SELECT * FROM budget_categories')
  Future<List<BudgetCategoryEntity>> getAllCategories();

  @insert
  Future<void> insertCategory(BudgetCategoryEntity category);
}