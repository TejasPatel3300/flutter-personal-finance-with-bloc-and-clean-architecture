import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

import '../entity/transaction.dart';

abstract class TransactionRepository {
  Future<Either<Failure, List<Transaction>>> getAllTransactions();

  Future<Either<Failure, List<Transaction>>> getAllTransactionsByType({required TransactionType type});

  Future<Either<Failure, Transaction>> addTransaction({required Transaction transaction});
}
