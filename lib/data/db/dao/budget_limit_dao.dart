import 'package:floor/floor.dart';

import '../../model/dto/entities/budget_limit_entity.dart';

@dao
abstract class BudgetLimitDao {
  @Query('SELECT * FROM budget_limits WHERE budget_id = :budgetId')
  Future<List<BudgetLimitEntity>> getBudgetLimitsByBudgetId(int budgetId);

  @insert
  Future<void> insertBudgetLimit(BudgetLimitEntity budgetLimit);
}