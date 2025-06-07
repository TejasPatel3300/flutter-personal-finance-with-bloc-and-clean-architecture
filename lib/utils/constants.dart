import 'package:flutter/material.dart';
import 'package:personal_finance_tracker/data/model/category/category_model.dart';
import 'package:personal_finance_tracker/utils/extensions.dart';

class Constants {
  static final initialCategoryList = [
    CategoryDTO(userId: -1, name: 'Food & Dining', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.orangeAccent.toHex()),
    CategoryDTO(userId: -1, name: 'Transportation', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.grey.toHex()),
    CategoryDTO(userId: -1, name: 'Housing', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.blue.toHex()),
    CategoryDTO(userId: -1, name: 'Entertainment', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.red.toHex()),
    CategoryDTO(userId: -1, name: 'Shopping', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.yellow.toHex()),
    CategoryDTO(userId: -1, name: 'Healthcare', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.pink.toHex()),
    CategoryDTO(userId: -1, name: 'Personal Care', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.green.toHex()),
    CategoryDTO(userId: -1, name: 'Education', type: 'expense', createdAt: DateTime.now(), isDefault: true, color: Colors.brown.toHex()),
    CategoryDTO(userId: -1, name: 'Salary', type: 'income', createdAt: DateTime.now(), isDefault: true, color:  Colors.teal.toHex()),
    CategoryDTO(userId: -1, name: 'Gift', type: 'income', createdAt: DateTime.now(), isDefault: true,color: Colors.cyan.toHex()),
  ];
}