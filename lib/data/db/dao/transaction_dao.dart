import 'package:personal_finance_tracker/data/db/db_helper.dart';

class TransactionDao {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<int> insertCategory(Map<String, dynamic> category) async {
    final db = await _dbHelper.database;
    return await db.insert('transactions', category);
  }

  Future<List<Map<String, dynamic>>> getAllTransactions() async {
    final db = await _dbHelper.database;
    return await db.query('transactions');
  }

  Future<int> updateCategory(
      int categoryId, Map<String, dynamic> category) async {
    final db = await _dbHelper.database;
    return await db.update('transactions', category,
        where: 'category_id = ?', whereArgs: [categoryId]);
  }

  Future<int> deleteCategory(int categoryId) async {
    final db = await _dbHelper.database;
    return await db.delete('transactions',
        where: 'category_id = ?', whereArgs: [categoryId]);
  }
}
