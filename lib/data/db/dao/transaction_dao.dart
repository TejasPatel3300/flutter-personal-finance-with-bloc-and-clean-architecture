import 'package:personal_finance_tracker/data/db/db_helper.dart';

class TransactionDao {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<Map<String, dynamic>> insertTransaction(Map<String, dynamic> transaction) async {
    final db = await _dbHelper.database;
    final lastInsertedRecordId = await db.insert('transactions', transaction);
    if (lastInsertedRecordId == 0) {
      throw Exception('Record could not be added!');
    }
    final transactionList = await getTransactionById(transactionId: lastInsertedRecordId);
    if (transactionList.isEmpty) {
      throw Exception('Last inserted record could not be found!');
    }
    return transactionList.first;
  }

  Future<List<Map<String, dynamic>>> getAllTransactions() async {
    final db = await _dbHelper.database;
    return await db.rawQuery('SELECT * FROM ${DatabaseHelper.viewTransactionWithCategoryName} ORDER BY date DESC');
    return await db.query('transactions');
  }

  Future<List<Map<String, dynamic>>> getTransactionById({required int transactionId}) async {
    final db = await _dbHelper.database;
    return await db.query('transactions', where: 'transaction_id = ?', whereArgs: [transactionId]);
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
