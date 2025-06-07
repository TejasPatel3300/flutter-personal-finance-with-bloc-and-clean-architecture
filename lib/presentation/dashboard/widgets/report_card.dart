import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/report/report_summary/report_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/transaction_bloc.dart';
import 'package:personal_finance_tracker/utils/extensions.dart';

class SpendingByCategoryCard extends StatelessWidget {
  const SpendingByCategoryCard({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) => BlocProvider(
        create: (context) =>
            ReportBloc(allTransactions: state.currentTransactions?.toList() ?? [])..add(ReportEventFetch()),
        child: SpendingChartContent(onTapViewAll: () => pageController.jumpToPage(2)),
      ),
    );
  }
}

class SpendingChartContent extends StatelessWidget {
  const SpendingChartContent({
    super.key,
    required this.onTapViewAll,
  });

  final VoidCallback onTapViewAll;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionBloc, TransactionState>(
      listener: (context, state) {
        context.read<ReportBloc>().add(ReportEventUpdate(updatedTransactions: state.currentTransactions ?? []));
        // TODO: implement listener
      },
      child: BlocBuilder<ReportBloc, ReportState>(
        builder: (context, state) {
          final groupedExpenseTransactions = state.data;
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Spending by Category',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: onTapViewAll,
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Chart + Labels
                  Column(
                    children: [
                      // Pie Chart
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: PieChart(
                          PieChartData(
                            centerSpaceRadius: 30,
                            sectionsSpace: 2,
                            startDegreeOffset: 270,
                            sections: [
                              ...List.generate(
                                groupedExpenseTransactions.length,
                                (index) {
                                  final categoryName = groupedExpenseTransactions.keys.elementAt(index);
                                  final transactionsForCategory = groupedExpenseTransactions[categoryName] ?? [];
                                  final totalAmountForCategory = transactionsForCategory.fold(
                                      0.0, (previousValue, element) => previousValue + element.amount);
                                  final color = transactionsForCategory.isNotEmpty
                                      ? HexColor.fromHex(transactionsForCategory.first.color ?? '')
                                      : Colors.green.shade50;
                                  return PieChartSectionData(
                                    value: totalAmountForCategory,
                                    color: color,
                                    radius: 25,
                                    showTitle: false,
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 30),

                      // Legend
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...List.generate(
                            groupedExpenseTransactions.length,
                            (index) {
                              final categoryName = groupedExpenseTransactions.keys.elementAt(index);
                              final transactionsForCategory = groupedExpenseTransactions[categoryName] ?? [];
                              final totalAmountForCategory = transactionsForCategory.fold(
                                  0.0, (previousValue, element) => previousValue + element.amount);
                              final color = transactionsForCategory.isNotEmpty
                                  ? HexColor.fromHex(transactionsForCategory.first.color ?? '')
                                  : Colors.green.shade50;
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: CategoryLegend(
                                  color: color,
                                  title: '$categoryName',
                                  amount: '\$$totalAmountForCategory',
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
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
