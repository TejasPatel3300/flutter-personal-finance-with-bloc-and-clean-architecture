import 'package:personal_finance_tracker/data/db/db_helper.dart';

class AccountDao {
  static final AccountDao _instance = AccountDao._internal();

  factory AccountDao() => _instance;

  AccountDao._internal();

  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<int> insertAccount(Map<String, dynamic> account) async {
    final db = await _dbHelper.database;
    return await db.insert(DatabaseHelper.tableAccounts, account);
  }

  Future<List<Map<String, dynamic>>> getAllAccounts() async {
    final db = await _dbHelper.database;
    return await db.query(DatabaseHelper.tableAccounts);
  }

  Future<int> updateAccount(int accountId, Map<String, dynamic> account) async {
    final db = await _dbHelper.database;
    return await db.update(
      DatabaseHelper.tableAccounts,
      account,
      where: 'account_id = ?',
      whereArgs: [accountId],
    );
  }

  Future<int> deleteAccount(int accountId) async {
    final db = await _dbHelper.database;
    return await db.delete(
      DatabaseHelper.tableAccounts,
      where: 'account_id = ?',
      whereArgs: [accountId],
    );
  }
}
