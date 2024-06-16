import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/expense_entity.dart';

@dao
abstract class ExpenseDao {
  @Query('SELECT * FROM ExpenseEntity')
  Future<List<ExpenseEntity>> findAllExpenses();

  @Query('SELECT * FROM ExpenseEntity WHERE expenseId = :id')
  Future<ExpenseEntity?> findExpenseById(int id);

  @insert
  Future<void> insertExpense(ExpenseEntity expense);

  @update
  Future<void> updateExpense(ExpenseEntity expense);

  @delete
  Future<void> deleteExpense(ExpenseEntity expense);
}
