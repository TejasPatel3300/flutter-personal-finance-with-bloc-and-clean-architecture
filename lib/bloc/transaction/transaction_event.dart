part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.addTransactionRequested({required AddTransactionParams params}) = TransactionAddTransactionRequested;
  const factory TransactionEvent.fetchTransactionRequested() = TransactionFetchRequested;
  const factory TransactionEvent.updateTransactionRequested({required Transaction transaction}) = TransactionUpdateRequested;
  const factory TransactionEvent.deleteTransactionRequested({required Transaction transaction}) = TransactionDeleteRequested;
}
