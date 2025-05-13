import 'package:flutter/material.dart';
import 'package:personal_finance_tracker/presentation/add_budget/add_budget_screen.dart';

class Budget extends StatelessWidget {
  const Budget({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Your Budgets",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddBudgetScreen(),
                  ));
                },
                icon: const Icon(Icons.add, size: 16),
                label: const Text("New"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Card-style container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "You haven't created any budgets yet",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddBudgetScreen(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  child: const Text("Create your first budget"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
