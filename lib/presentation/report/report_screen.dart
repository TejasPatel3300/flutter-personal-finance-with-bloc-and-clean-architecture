import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:personal_finance_tracker/bloc/report/report_details/report_details_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/transaction_bloc.dart';
import 'package:personal_finance_tracker/presentation/model/monthly_report.dart';
import 'package:personal_finance_tracker/utils/extensions.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        return BlocProvider(
          create: (context) => ReportDetailsBloc(allTransactions: state.currentTransactions ?? [])
            ..add(ReportDetailsEvent.fetch(monthStartDate: DateTime.now().copyWith(day: 1))),
          child: ReportScreenContent(),
        );
      },
    );
  }
}

class ReportScreenContent extends StatefulWidget {
  const ReportScreenContent({
    super.key,
  });

  @override
  State<ReportScreenContent> createState() => _ReportScreenContentState();
}

class _ReportScreenContentState extends State<ReportScreenContent> with SingleTickerProviderStateMixin {
  int selectedTab = 1;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: selectedTab);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionBloc, TransactionState>(
      listener: (context, state) {
        // update the transactions list
        context
            .read<ReportDetailsBloc>()
            .add(ReportDetailsEvent.update(updatedTransactions: state.currentTransactions ?? []));
      },
      child: BlocBuilder<ReportDetailsBloc, ReportDetailsState>(
        builder: (context, state) {
          final income = state.report.income;
          final expense = state.report.expense;
          final currentMonthStartDate = state.report.startDateOfMonth;
          final monthYear = DateFormat('MMMM yyyy').format(currentMonthStartDate);
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    MonthlyReportHeader(
                      monthYear: monthYear,
                      income: income,
                      expenses: expense,
                      savings: income - expense,
                      onPressedPrevious: () {
                        int month = currentMonthStartDate.month;
                        int year = currentMonthStartDate.year;
                        if (month == DateTime.january) {
                          month = DateTime.december;
                          year = year - 1;
                        } else {
                          month = month - 1;
                        }
                        currentMonthStartDate.month == 1;
                        final monthStartDate = DateTime(year, month, 1);
                        context.read<ReportDetailsBloc>().add(ReportDetailsEvent.fetch(monthStartDate: monthStartDate));
                      },
                      onPressedNext: () {
                        int month = currentMonthStartDate.month;
                        int year = currentMonthStartDate.year;
                        if (month == DateTime.december) {
                          month = DateTime.january;
                          year = year + 1;
                        } else {
                          month = month + 1;
                        }
                        currentMonthStartDate.month == 1;
                        final monthStartDate = DateTime(year, month, 1);
                        context.read<ReportDetailsBloc>().add(ReportDetailsEvent.fetch(monthStartDate: monthStartDate));
                      },
                    ),
                    // TabBar
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                        indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Tab(text: "Overview"),
                          Tab(text: "Categories"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Flexible(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          DailySpendingChart(dailySpending: state.report.dailySpendingOverview.reversed.toList()),
                          SpendingByCategoryChart(categorySpending: state.report.categorySpendingOverview),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (state is ReportDetailsLoading) ...[
                Align(child: CircularProgressIndicator())
              ]
            ],
          );
        },
      ),
    );
  }
}

class MonthlyReportHeader extends StatelessWidget {
  final String monthYear;
  final double income;
  final double expenses;
  final double savings;
  final VoidCallback onPressedPrevious;
  final VoidCallback onPressedNext;

  const MonthlyReportHeader({
    super.key,
    required this.monthYear,
    required this.income,
    required this.expenses,
    required this.savings,
    required this.onPressedPrevious,
    required this.onPressedNext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Month Navigation Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(onTap: onPressedPrevious, child: const Icon(Icons.chevron_left, size: 28)),
            Text(
              monthYear,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(onTap: onPressedNext, child: const Icon(Icons.chevron_right, size: 28)),
          ],
        ),
        const SizedBox(height: 20),

        // Summary Box
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStat("Income", income, Colors.green),
              _buildStat("Expenses", expenses, Colors.red),
              _buildStat("Savings", savings, Colors.green),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildStat(String label, double value, Color color) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.black54)),
        const SizedBox(height: 6),
        Text(
          "\$${value.toStringAsFixed(2)}",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}

class SpendingByCategoryChart extends StatelessWidget {
  final List<SpendingByCategory> categorySpending;

  const SpendingByCategoryChart({super.key, required this.categorySpending});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Spending by Category',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 1.3,
                    child: PieChart(
                      duration: Duration(seconds: 2),
                      curve: Curves.easeIn,
                      PieChartData(
                        sections: _buildPieSections(),
                        centerSpaceRadius: 40,
                        sectionsSpace: 2,
                        pieTouchData: PieTouchData(
                          touchCallback: (event, response) {
                            // Add tap feedback if you want
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildLegend(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  List<PieChartSectionData> _buildPieSections() {
    return categorySpending
        .map(
          (e) => PieChartSectionData(
            color: HexColor.fromHex(e.categoryColor),
            value: e.totalSpendingForCategory,
            title: e.categoryName,
            radius: 50,
            showTitle: false,
          ),
        )
        .toList();
  }

  Widget _buildLegend() {
    return Column(
      children: categorySpending.map((d) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: HexColor.fromHex(d.categoryColor),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  d.categoryName,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              Text(
                "\$${d.totalSpendingForCategory.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class DailySpendingChart extends StatelessWidget {
  final List<DailySpending> dailySpending;

  const DailySpendingChart({super.key, required this.dailySpending});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Daily Spending',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 1.8,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 5,
                      getTitlesWidget: (value, meta) {
                        return Text(value.toInt().toString(), style: const TextStyle(fontSize: 10));
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(border: Border(bottom: BorderSide(color: Colors.grey))),
                barGroups: dailySpending.map((d) {
                  return BarChartGroupData(
                    x: d.date.day,
                    barRods: [
                      BarChartRodData(
                        toY: d.totalSpendingForDay,
                        color: Colors.lightBlue,
                        width: 10,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  );
                }).toList(),
                gridData: FlGridData(show: false),
                // maxY: ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
