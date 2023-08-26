import 'package:flutter/material.dart';

class BudgetCategoryInput extends StatelessWidget {
  final String category;
  final String hintText;
  final TextEditingController controller;
  final void Function(String)? onChanged;

  const BudgetCategoryInput({
    super.key,
    required this.category,
    required this.controller,
    required this.hintText, 
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: 'Enter budget amount',
          ),
          onChanged: onChanged,
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
