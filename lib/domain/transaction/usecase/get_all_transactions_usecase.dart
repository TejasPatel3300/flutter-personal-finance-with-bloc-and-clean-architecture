import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/models/transaction_with_category.dart';
import 'package:personal_finance_tracker/domain/transaction/repository/transaction_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

class GetAllTransactionsUseCase implements UseCase<List<TransactionWithCategoryName>, NoParams>{
  final TransactionRepository transactionRepository;

  GetAllTransactionsUseCase({required this.transactionRepository});
  @override
  Future<Either<Failure, List<TransactionWithCategoryName>>> call(NoParams params) async {
    return await transactionRepository.getAllTransactions();
  }
}