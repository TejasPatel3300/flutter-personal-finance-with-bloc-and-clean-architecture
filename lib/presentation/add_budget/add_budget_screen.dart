import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddBudgetScreen extends StatefulWidget {
  const AddBudgetScreen({Key? key}) : super(key: key);

  @override
  _AddBudgetScreenState createState() => _AddBudgetScreenState();
}

class _AddBudgetScreenState extends State<AddBudgetScreen> {
  final TextEditingController _budgetNameController =
      TextEditingController(text: 'Monthly Expenses');
  final TextEditingController _budgetAmountController =
      TextEditingController(text: '0');
  DateTimeRange _dateRange = DateTimeRange(
    start: DateTime(2025, 4, 1),
    end: DateTime(2025, 5, 31),
  );

  final List<Map<String, dynamic>> _categories = [
    {'name': 'Food & Dining', 'color': Colors.red},
    {'name': 'Transportation', 'color': Colors.blue},
    {'name': 'Housing', 'color': Colors.green},
    {'name': 'Entertainment', 'color': Colors.purple},
    {'name': 'Shopping', 'color': Colors.pink},
    {'name': 'Healthcare', 'color': Colors.cyan},
    {'name': 'Personal Care', 'color': Colors.orange},
    {'name': 'Education', 'color': Colors.brown},
  ];

  Future<void> _selectDateRange() async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      initialDateRange: _dateRange,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _dateRange) {
      setState(() {
        _dateRange = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Add Budget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Budget Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _budgetNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Budget Amount',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _budgetAmountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.attach_money),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Budget Period',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: _selectDateRange,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 20),
                    const SizedBox(width: 12),
                    Text(
                      '${DateFormat('MMM dd, yyyy').format(_dateRange.start)} - ${DateFormat('MMM dd, yyyy').format(_dateRange.end)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3.5,
                ),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: _categories[index]['color'],
                          child: const Icon(Icons.check,
                              color: Colors.white, size: 16),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            _categories[index]['name'],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4AADBB),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child:
                    const Text('Create Budget', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _budgetNameController.dispose();
    _budgetAmountController.dispose();
    super.dispose();
  }
}
