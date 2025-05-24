import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';

class TransactionWithCategoryName {
  final int? id;
  final int? categoryId;
  final double amount;
  final TransactionType type;
  final String? description;
  final DateTime date;
  final String? notes;
  final String? categoryName;


  TransactionWithCategoryName({
    required this.id,
    required this.categoryId,
    required this.amount,
    required this.type,
    this.description,
    required this.date,
    this.notes,
    this.categoryName,
  });
}
