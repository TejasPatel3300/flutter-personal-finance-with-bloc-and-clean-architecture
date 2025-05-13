import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _dateController = TextEditingController(
    text: DateFormat('dd/MM/yyyy').format(DateTime.now()),
  );
  String _selectedCategory = '';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
            // Transaction Type Selector using TabBar
            Container(
              padding: const EdgeInsets.all(2),
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
                  Tab(text: "Expense"),
                  Tab(text: "Income"),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // TabBarView for form content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Expense Tab Content
                  _buildTransactionForm(),
                  // Income Tab Content (same form, just different tab)
                  _buildTransactionForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionForm() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Amount Field
          const Text(
            'Amount',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: '\$ ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
          const SizedBox(height: 16),

          // Description Field
          const Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(
              hintText: 'Enter description',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
          const SizedBox(height: 16),

          // Category Dropdown
          const Text(
            'Category',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                ),
                hint: const Text('Select category'),
                value: _selectedCategory.isEmpty ? null : _selectedCategory,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: [
                  'Food',
                  'Transportation',
                  'Housing',
                  'Entertainment',
                  'Shopping',
                  'Healthcare',
                  'Personal Care',
                  'Education'
                ].map((String category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedCategory = value ?? '';
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Date Field
          const Text(
            'Date',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _dateController,
            readOnly: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              suffixIcon: IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null) {
                    setState(() {
                      _dateController.text =
                          DateFormat('dd/MM/yyyy').format(picked);
                    });
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Notes Field
          const Text(
            'Notes (optional)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _notesController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Add notes',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
          ),
          const SizedBox(height: 16),

          // Save Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: const Color(0xFF4AADBB),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Save Transaction',
                  style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    _notesController.dispose();
    _dateController.dispose();
    _tabController.dispose();
    super.dispose();
  }
}
