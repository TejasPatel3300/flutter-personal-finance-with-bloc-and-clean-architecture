import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:personal_finance_tracker/repository/category_repository_impl_sqlite.dart';

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
      (r) => r.forEach(
        (element) => print(element.name),
      ),
    ));
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
                    child: const Icon(Icons.arrow_outward_rounded,
                        color: Colors.white),
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
    final showRecentTransactions =
        true; //todo: logic/condition to determine if the transaction list should be shown or no transactions widget
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: showRecentTransactions
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => TransactionListItem(
                  iconColor: Colors.green,
                  icon: Icons.account_balance_wallet_outlined,
                  title: 'paycheck',
                  date: 'Apr 20, 2025',
                  amount: '\$40,000.00',
                  isCredit: true,
                ),
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

class SpendingByCategoryCard extends StatelessWidget {
  const SpendingByCategoryCard({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
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
                  onTap: () => pageController.jumpToPage(2),
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
                        PieChartSectionData(
                          value: 10000,
                          color: Colors.blue,
                          radius: 25,
                          showTitle: false,
                        ),
                        PieChartSectionData(
                          value: 200,
                          color: Colors.teal,
                          radius: 25,
                          showTitle: false,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 30),

                // Legend
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CategoryLegend(
                      color: Colors.blue,
                      title: 'Housing',
                      amount: '\$10,000.00',
                    ),
                    SizedBox(height: 12),
                    CategoryLegend(
                      color: Colors.teal,
                      title: 'Healthcare',
                      amount: '\$200.00',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Sub-component: Legend Row
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
  final Color iconColor;
  final IconData icon;
  final String title;
  final String date;
  final String amount;
  final bool isCredit;
  final bool isHighlighted;

  const TransactionListItem({
    super.key,
    required this.iconColor,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
    required this.isCredit,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.grey.shade200 : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Leading circular icon
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),

          const SizedBox(width: 12),

          // Title and date
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
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
            "${isCredit ? '+ ' : '- '}$amount",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: isCredit ? Colors.green : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
