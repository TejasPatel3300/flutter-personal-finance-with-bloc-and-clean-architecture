import 'package:personal_finance_tracker/data/db/db_helper.dart';

class CategoryDao {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  Future<int> insertCategory(Map<String, dynamic> category) async {
    final db = await _dbHelper.database;
    return await db.insert('categories', category);
  }

  Future<List<Map<String, dynamic>>> getAllCategories() async {
    final db = await _dbHelper.database;
    return await db.query('categories');
  }

  Future<List<Map<String, dynamic>>> getAllCategoriesByType(String categoryType) async {
    final db = await _dbHelper.database;
    return await db.query('categories', where: 'type = ?', whereArgs: [categoryType]);
  }

  Future<int> updateCategory(
      int categoryId, Map<String, dynamic> category) async {
    final db = await _dbHelper.database;
    return await db.update('categories', category,
        where: 'category_id = ?', whereArgs: [categoryId]);
  }

  Future<int> deleteCategory(int categoryId) async {
    final db = await _dbHelper.database;
    return await db.delete('categories',
        where: 'category_id = ?', whereArgs: [categoryId]);
  }
}
