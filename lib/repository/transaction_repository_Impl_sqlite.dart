import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/data/db/dao/transaction_dao.dart';
import 'package:personal_finance_tracker/data/db/db_helper.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/repository/transaction_repository.dart';
import 'package:personal_finance_tracker/model/transaction_model.dart';
import 'package:personal_finance_tracker/utils/failure.dart';
import 'package:sqflite/sqflite.dart' as sqlite;

class TransactionRepositoryImplSqlite implements TransactionRepository{
  final _transactionDao = TransactionDao();
  Future<void> addTransaction() async {
    final db = await DatabaseHelper().database;
  }

  @override
  Future<Either<Failure, List<Transaction>>> getAllTransactions() async {
    try {
      final response = await _transactionDao.getAllTransactions();
      if (response.isEmpty) {
        throw Exception('No categories found!');
      }
      final transactionDTOList = response.map((e) => TransactionDTO.fromJson(e)).toList();
      final categories = transactionDTOList.map((categoryDTO) => categoryDTO.toEntity()).toList();
      return Right(categories);
    } on sqlite.DatabaseException catch (e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    };
  }

  @override
  Future<Either<Failure, List<Transaction>>> getAllTransactionsByType({required TransactionType type}) {
    // TODO: implement getAllTransactionsByType
    throw UnimplementedError();
  }
}
