import 'package:flutter/material.dart';

class BudgetCategoryInput extends StatelessWidget {
  final String category;

  BudgetCategoryInput({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter budget amount',
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}