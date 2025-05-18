import 'package:personal_finance_tracker/data/model/category_model.dart';

class Constants {
  static final initialCategoryList = [
    CategoryDTO(userId: -1, name: 'Food & Dining', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Transportation', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Housing', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Entertainment', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Shopping', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Healthcare', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Personal Care', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Education', type: 'expense', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Salary', type: 'income', createdAt: DateTime.now(), isDefault: true),
    CategoryDTO(userId: -1, name: 'Gift', type: 'income', createdAt: DateTime.now(), isDefault: true),
  ];
}