import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/repository/transaction_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

class GetAllTransactionsUseCase implements UseCase<List<Transaction>, NoParams>{
  final TransactionRepository transactionRepository;

  GetAllTransactionsUseCase({required this.transactionRepository});
  @override
  Future<Either<Failure, List<Transaction>>> call(NoParams params) async {
    return await transactionRepository.getAllTransactions();
  }
}