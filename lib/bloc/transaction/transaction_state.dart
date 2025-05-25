part of 'transaction_bloc.dart';

@freezed
abstract class TransactionState with _$TransactionState {
  const factory TransactionState.initial({List<TransactionWithCategoryName>? currentTransactions}) = TransactionInitial;
  const factory TransactionState.loading({List<TransactionWithCategoryName>? currentTransactions}) = TransactionLoading;
  const factory TransactionState.failure({required Failure failure, List<TransactionWithCategoryName>? currentTransactions}) = TransactionFailure;
  const factory TransactionState.success({List<TransactionWithCategoryName>? currentTransactions}) = TransactionSuccess;
}
