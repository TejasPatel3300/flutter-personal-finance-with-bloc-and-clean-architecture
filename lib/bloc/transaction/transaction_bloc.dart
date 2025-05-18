import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance_tracker/domain/transaction/usecase/add_transaction_usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/usecase/get_all_transactions_usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/usecase/get_transations_by_type_usecase.dart';

part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final AddTransactionUseCase _addTransactionUseCase;
  final GetTransactionsByTypeUseCase _getTransactionsByTypeUseCase;
  final GetAllTransactionsUseCase _getAllTransactionsUseCase;

  TransactionBloc({
    required AddTransactionUseCase addTransactionUseCase,
    required GetTransactionsByTypeUseCase getTransactionsByTypeUseCase,
    required GetAllTransactionsUseCase getAllTransactionsUseCase,
  })  : _addTransactionUseCase = addTransactionUseCase,
        _getTransactionsByTypeUseCase = getTransactionsByTypeUseCase,
        _getAllTransactionsUseCase = getAllTransactionsUseCase,
        super(const TransactionState.initial()) {
    on<TransactionAddTransactionRequested>(_onTransactionAddRequested);
  }

  Future<void> _onTransactionAddRequested(TransactionAddTransactionRequested event, Emitter emit) async {
    final result = await _addTransactionUseCase.call(event.params);
    result.fold(
      (failure) {},
      (transaction) {},
    );
  }
}
