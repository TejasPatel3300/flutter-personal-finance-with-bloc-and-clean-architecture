import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/report/report_summary/report_bloc.dart';
import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/models/transaction_with_category.dart';
import 'package:personal_finance_tracker/presentation/all_transactions/all_transactions_screen.dart';
import 'package:personal_finance_tracker/presentation/dashboard/widgets/report_card.dart';
import 'package:personal_finance_tracker/repository/category_repository_impl_sqlite.dart';
import 'package:personal_finance_tracker/utils/datetime_utils.dart';
import 'package:personal_finance_tracker/utils/extensions.dart';

import '../../bloc/cateogory/category_bloc.dart';
import '../../bloc/transaction/transaction_bloc.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    _getCategories();
    _getTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BalanceCard(),
            SizedBox(height: 16),
            SpendingByCategoryCard(pageController: widget.pageController),
            SizedBox(height: 16),
            RecentTransactionsCard(),
          ],
        ),
      ),
    );
  }

  Future<void> _getCategories() async {
    final allCategories = await CategoryRepositoryImplSQLite().getAllCategories();
    print(allCategories.fold(
          (l) => l.message,
          (r) =>
          r.forEach(
                (element) => print(element.name),
          ),
    ));
  }

  void _getTransactions() {
    context.read<TransactionBloc>().add(TransactionFetchRequested());
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.cyan[600],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'Total Balance',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 4),
              Text(
                '\$0.00',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          // Income Column
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.cyan[300],
                    child: const Icon(
                      Icons.arrow_downward_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      const Text(
                        'Income',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        '\$0.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.cyan[300],
                    child: const Icon(Icons.arrow_outward_rounded, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    children: [
                      const Text(
                        'Expense',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        '\$0.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RecentTransactionsCard extends StatelessWidget {
  const RecentTransactionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionBloc, TransactionState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is TransactionSuccess) {
          final transactions = state.currentTransactions ?? [];
          return _buildTransactionsList(transactions, context);
        } else if (state is TransactionLoading) {
          final transactions = state.currentTransactions ?? [];
          return _buildTransactionsList(transactions, context, isLoading: true);
        }
        return _buildTransactionsList([], context);
      },
    );
  }

  Widget _buildTransactionsList(List<TransactionWithCategoryName> transactions, BuildContext context,
      {bool isLoading = false}) {
    final shownTransactions = transactions.length > 5 ? transactions.sublist(0, 5) : transactions;
    final showRecentTransactions = shownTransactions.isNotEmpty;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : showRecentTransactions
            ? Column(
          children: [
            Row(
              children: [
                Text('Recent Transactions'),
                Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => AllTransactionsScreen()));
                            },
                            child: Hero(
                              tag: 'allTransactions',
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [Text('View All'), Icon(Icons.chevron_right)],
                              ),
                            ),
                          ),
                        ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: transactions.length,
              itemBuilder: (context, index) =>
                  TransactionListItem(
                    transaction: transactions[index],
                  ),
            ),
          ],
        )
            : Column(
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recent Transactions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Center content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.attach_money,
                  size: 40,
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                Text(
                  'No recent transactions',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Add your first transaction',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryLegend extends StatelessWidget {
  final Color color;
  final String title;
  final String amount;

  const CategoryLegend({
    super.key,
    required this.color,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, color: color, size: 12),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        Text(
          amount,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

class TransactionListItem extends StatelessWidget {
  final TransactionWithCategoryName transaction;

  const TransactionListItem({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    final iconBGColor = HexColor.fromHex(transaction.color ?? '#000000');
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Leading circular icon
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconBGColor,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.account_balance_wallet_outlined, color: Colors.white, size: 20),
          ),

          const SizedBox(width: 12),

          // Title and date
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.description ?? '',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  transaction.categoryName ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateTimeUtils.instance.getDateMMMddyyyy(transaction.date),
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // Amount
          Text(
            "${transaction.type == TransactionType.income ? '+ ' : '- '}${transaction.amount}",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: transaction.type == TransactionType.income
                  ? Colors.green
                  : transaction.type == TransactionType.expense
                      ? Colors.red
                      : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
