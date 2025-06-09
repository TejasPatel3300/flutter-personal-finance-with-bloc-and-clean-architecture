import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/repository/transaction_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';


class AddTransactionUseCase implements UseCase<Transaction, AddTransactionParams>{
  final TransactionRepository transactionRepository;

  AddTransactionUseCase({required this.transactionRepository});
  @override
  Future<Either<Failure, Transaction>> call(AddTransactionParams params) async {
    /* domain level validation also goes here */
    final transaction = Transaction(
      userId: params.userId,
      amount: params.amount,
      categoryId: params.categoryId,
      description: params.description,
      notes: params.notes,
      type: params.transactionType,
      date: params.date,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await transactionRepository.addTransaction(transaction: transaction);
  }
}

class AddTransactionParams {
  final int categoryId;
  final int userId;
  final double amount;
  final DateTime date;
  final String description;
  final TransactionType transactionType;
  String? notes;

  AddTransactionParams({
    required this.amount,
    required this.categoryId,
    required this.userId,
    required this.date,
    required this.description,
    required this.transactionType,
    this.notes,
  });
}