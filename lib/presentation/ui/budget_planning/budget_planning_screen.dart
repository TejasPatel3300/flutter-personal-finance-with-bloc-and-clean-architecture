import 'package:flutter/material.dart';

import 'widgets/budget_category_input.dart';

class BudgetPlanningScreen extends StatefulWidget {
  const BudgetPlanningScreen({super.key});

  @override
  State<BudgetPlanningScreen> createState() => _BudgetPlanningScreenState();
}

class _BudgetPlanningScreenState extends State<BudgetPlanningScreen> {
  final TextEditingController _totalController = TextEditingController();
  final TextEditingController _necessitiesController = TextEditingController();
  final TextEditingController _entertainmentController =
      TextEditingController();
  final TextEditingController _investmentController = TextEditingController();

  double _totalBudget = 0;
  double _necessitiesBudget = 0;
  double _entertainmentBudget = 0;
  double _investmentBudget = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budget Planning'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Allocate Budget for ${DateTime.november}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              BudgetCategoryInput(
                controller: _totalController,
                category: 'Total budget amount',
                hintText: '',
                onChanged: (value) {
                  _totalBudget = double.tryParse(value) ?? 0;
                  setState(() {
                  });
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: \n\$$_totalBudget',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    ' Allocated: \n\$${_getAllocatedBudget()}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              BudgetCategoryInput(
                controller: _necessitiesController,
                category: 'Necessities',
                hintText: '',
                onChanged: (value) {
                  _necessitiesBudget = double.tryParse(value) ?? 0;
                  setState(() {});
                },
              ),
              BudgetCategoryInput(
                controller: _entertainmentController,
                category: 'Entertainment',
                hintText: '',
                onChanged: (value) {
                  _entertainmentBudget = double.tryParse(value) ?? 0;
                  setState(() {});
                },
              ),
              BudgetCategoryInput(
                controller: _investmentController,
                category: 'Investment',
                hintText: '',
                onChanged: (value) {
                  _investmentBudget = double.tryParse(value) ?? 0;
                  setState(() {});
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Implement save budget plan logic
                },
                child: const Text('Save Budget Plan'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _getAllocatedBudget() {
    return (_necessitiesBudget + _entertainmentBudget + _investmentBudget);
  }
}
