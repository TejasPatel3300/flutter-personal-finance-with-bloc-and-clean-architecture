import 'package:floor/floor.dart';

import '../../model/dto/entities/budget_entity.dart';

@dao
abstract class BudgetDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBudget(BudgetEntity budget);

  @Query('SELECT * FROM BudgetEntity WHERE id = :id')
  Future<BudgetEntity?> getBudget(int id);
}