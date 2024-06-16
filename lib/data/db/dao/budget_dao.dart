import 'package:floor/floor.dart';

import '../../model/dto/entities/budget_entity.dart';

@dao
abstract class BudgetDao {
  @Query('SELECT * FROM BudgetEntity')
  Future<List<BudgetEntity>> findAllBudgets();

  @Query('SELECT * FROM BudgetEntity WHERE id = :id')
  Future<BudgetEntity?> findBudgetById(int id);

  @Query('SELECT * FROM BudgetEntity WHERE month = :month AND year = :year AND userId = :userId')
  Future<BudgetEntity?> findBudgetByMonthAndYear(int month, int year, int userId);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBudget(BudgetEntity budget);

  @update
  Future<void> updateBudget(BudgetEntity budget);

  @delete
  Future<void> deleteBudget(BudgetEntity budget);
}
