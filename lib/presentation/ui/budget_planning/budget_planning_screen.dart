import 'package:flutter/material.dart';

import 'widgets/budget_category_input.dart';

class BudgetPlanningScreen extends StatelessWidget {
  const BudgetPlanningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Planning'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Allocate Your Budget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Total Monthly Budget: \$2500',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            BudgetCategoryInput(category: 'Necessities'),
            BudgetCategoryInput(category: 'Entertainment'),
            BudgetCategoryInput(category: 'Investment'),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Implement save budget plan logic
              },
              child: Text('Save Budget Plan'),
            ),
          ],
        ),
      ),
    );
  }
}

