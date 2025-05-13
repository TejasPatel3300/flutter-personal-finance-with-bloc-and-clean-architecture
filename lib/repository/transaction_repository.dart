import 'package:personal_finance_tracker/data/db/db_helper.dart';

class TransactionRepository {
  Future<void> addTransaction() async {
    final db = await DatabaseHelper().database;
  }
}
