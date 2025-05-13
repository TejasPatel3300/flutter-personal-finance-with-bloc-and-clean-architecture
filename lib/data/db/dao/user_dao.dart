import 'package:personal_finance_tracker/data/db/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<bool> insertUser(Map<String, dynamic> user) async {
    final db = await _dbHelper.database;
    final existingEmailCount = Sqflite.firstIntValue(
      await db.rawQuery(
        'SELECT COUNT(*) FROM ${DatabaseHelper.tableUsers} WHERE email = ?',
        [user['email']],
      ),
    );
    if (existingEmailCount != 0) {
      return false;
    }
    final lastInsertedColumnId = await db.insert(
      DatabaseHelper.tableUsers,
      user,
      conflictAlgorithm: ConflictAlgorithm.fail,
    );
    if (lastInsertedColumnId != 0) {
       await getUserByEmailAndPassword(email: user['email'], password: user['password']);
    }
    return lastInsertedColumnId != 0; // if the id is not zero that means insertion was successful

  }

  Future<List<Map<String, dynamic>>> getUserByEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final db = await _dbHelper.database;
    final res = await db.query(
      DatabaseHelper.tableUsers,
      where: 'email = ? AND password = ? ',
      whereArgs: [email, password],
      limit: 1,
    );
    print('response: $res');
    return res;
  }

  Future<List<Map<String, dynamic>>> getAllUsers() async {
    final db = await _dbHelper.database;
    return await db.query(DatabaseHelper.tableUsers);
  }

  Future<int> updateUser(int userId, Map<String, dynamic> user) async {
    final db = await _dbHelper.database;
    return await db.update(
      DatabaseHelper.tableUsers,
      user,
      where: 'user_id = ?',
      whereArgs: [userId],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> deleteUser(int userId) async {
    final db = await _dbHelper.database;
    return await db.delete(
      DatabaseHelper.tableUsers,
      where: 'user_id = ?',
      whereArgs: [userId],
    );
  }
}
