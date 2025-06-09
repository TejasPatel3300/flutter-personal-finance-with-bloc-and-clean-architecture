import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/data/db/dao/transaction_dao.dart';
import 'package:personal_finance_tracker/data/model/transaction/transaction_model.dart';
import 'package:personal_finance_tracker/data/model/transaction/transaction_with_category.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/models/transaction_with_category.dart';
import 'package:personal_finance_tracker/domain/transaction/repository/transaction_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';
import 'package:sqflite/sqflite.dart' as sqlite;

class TransactionRepositoryImplSqlite implements TransactionRepository {
  final _transactionDao = TransactionDao();

  @override
  Future<Either<Failure, List<TransactionWithCategoryName>>> getAllTransactions() async {
    try {
      final response = await _transactionDao.getAllTransactions();
      final transactionDTOList = response.map((e) => TransactionWithCategoryNameDTO.fromJson(e)).toList();
      final transactions = transactionDTOList.map((transactionDTO) => transactionDTO.toApplication()).toList();
      return Right(transactions);
    } on sqlite.DatabaseException catch (e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Transaction>>> getAllTransactionsByType({required TransactionType type}) {
    // TODO: implement getAllTransactionsByType
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Transaction>> addTransaction({required Transaction transaction}) async {
    try {
      final response = await _transactionDao.insertTransaction(TransactionDTO.fromEntity(transaction).toJson());
      final lastTransaction = TransactionDTO.fromJson(response);
      return Right(lastTransaction.toEntity());
    } on sqlite.DatabaseException catch (e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
