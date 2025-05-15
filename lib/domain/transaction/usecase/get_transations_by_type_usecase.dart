import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/repository/transaction_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

class GetTransactionsByTypeUseCase implements UseCase<List<Transaction>, GetTransactionsByTypeParams>{
  final TransactionRepository transactionRepository;

  GetTransactionsByTypeUseCase({required this.transactionRepository});
  @override
  Future<Either<Failure, List<Transaction>>> call(GetTransactionsByTypeParams params) async {
    return await transactionRepository.getAllTransactionsByType(type: params.type);
  }
}

class GetTransactionsByTypeParams {
  final TransactionType type;

  GetTransactionsByTypeParams({required this.type});
}