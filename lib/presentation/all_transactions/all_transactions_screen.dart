import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/search_filter_transaction/search_and_filter_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/transaction_bloc.dart';
import 'package:personal_finance_tracker/presentation/all_transactions/widgets/all_transaction_screen_body.dart';

class AllTransactionsScreen extends StatelessWidget{
  const AllTransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Transactions'),
      ),
      body: BlocConsumer<TransactionBloc, TransactionState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final transactions = state.currentTransactions ?? [];
          return BlocProvider(
            create: (context) => SearchAndFilterBloc(transactions),
            child: AllTransactionScreenBody(),
          );
        },
      ),
    );
  }
}
