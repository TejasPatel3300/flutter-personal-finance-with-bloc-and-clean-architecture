import 'package:personal_finance_tracker/data/db/db_helper.dart';

class TransactionDao {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<int> insertTransaction(Map<String, dynamic> transaction) async {
    final db = await _dbHelper.database;
    return await db.insert('transactions', transaction);
  }

  Future<List<Map<String, dynamic>>> getAllTransactions() async {
    final db = await _dbHelper.database;
    return await db.query('transactions');
  }

  Future<int> updateTransaction(
      int transactionId, Map<String, dynamic> transaction) async {
    final db = await _dbHelper.database;
    return await db.update('transactions', transaction,
        where: 'transaction_id = ?', whereArgs: [transactionId]);
  }

  Future<int> deleteTransaction(int transactionId) async {
    final db = await _dbHelper.database;
    return await db.delete('transactions',
        where: 'transaction_id = ?', whereArgs: [transactionId]);
  }
}
