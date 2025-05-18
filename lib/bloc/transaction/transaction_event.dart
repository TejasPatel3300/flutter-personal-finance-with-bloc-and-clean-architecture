part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.addTransactionRequested({required AddTransactionParams params}) = TransactionAddTransactionRequested;
}
