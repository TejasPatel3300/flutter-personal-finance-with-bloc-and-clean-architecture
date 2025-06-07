import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/report/report_details/report_details_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/transaction_bloc.dart';

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
  int selectedTab = 0;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MonthlyReportHeader(
              monthYear: "April 2025",
              income: 40000,
              expenses: 10200,
              savings: 29800,
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
              child: BlocConsumer<ReportDetailsBloc, ReportDetailsState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return TabBarView(
                    controller: _tabController,
                    children: [
                      DailySpendingChart(),
                      SpendingByCategoryChart(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MonthlyReportHeader extends StatelessWidget {
  final String monthYear;
  final double income;
  final double expenses;
  final double savings;

  const MonthlyReportHeader({
    super.key,
    required this.monthYear,
    required this.income,
    required this.expenses,
    required this.savings,
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
            const Icon(Icons.chevron_left, size: 28),
            Text(
              monthYear,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.chevron_right, size: 28),
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
  final List<_CategoryData> data = const [
    _CategoryData('Housing', 11000, Colors.green),
    _CategoryData('Transportation', 2500, Colors.blue),
    _CategoryData('Education', 2400, Colors.brown),
    _CategoryData('Shopping', 2000, Colors.pink),
    _CategoryData('Healthcare', 1000, Colors.lightBlueAccent),
    _CategoryData('Entertainment', 200, Colors.purple),
    _CategoryData('Food & Dining', 100, Colors.redAccent),
  ];

  const SpendingByCategoryChart({super.key});

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
    return data.map((d) {
      return PieChartSectionData(
        color: d.color,
        value: d.amount,
        title: '',
        radius: 50,
        showTitle: false,
      );
    }).toList();
  }

  Widget _buildLegend() {
    return Column(
      children: data.map((d) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: d.color,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  d.category,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              Text(
                "\$${d.amount.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _CategoryData {
  final String category;
  final double amount;
  final Color color;

  const _CategoryData(this.category, this.amount, this.color);
}

class DailySpendingChart extends StatelessWidget {
  final List<_DailySpendingData> data = const [
    _DailySpendingData(3, 0),
    _DailySpendingData(5, 150),
    _DailySpendingData(9, 40),
    _DailySpendingData(18, 60),
    _DailySpendingData(19, 20),
    _DailySpendingData(26, 50),
  ];

  const DailySpendingChart({super.key});

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
                barGroups: data.map((d) {
                  return BarChartGroupData(
                    x: d.day,
                    barRods: [
                      BarChartRodData(
                        toY: d.amount,
                        color: Colors.lightBlue,
                        width: 10,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  );
                }).toList(),
                gridData: FlGridData(show: false),
                maxY: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DailySpendingData {
  final int day;
  final double amount;

  const _DailySpendingData(this.day, this.amount);
}
