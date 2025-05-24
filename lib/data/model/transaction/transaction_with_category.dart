import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';
import 'package:personal_finance_tracker/domain/transaction/models/transaction_with_category.dart';

class TransactionWithCategoryNameDTO {
  final int? id;
  final int userId;
  final int? categoryId;
  final String? categoryName; // Only this additional field
  final double amount;
  final String type;
  final String? description;
  final DateTime date;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? notes;

  TransactionWithCategoryNameDTO({
    this.id,
    required this.userId,
    this.categoryId,
    this.categoryName,
    required this.amount,
    required this.type,
    this.description,
    required this.date,
    required this.createdAt,
    required this.updatedAt,
    this.notes,
  });

  /// From View Row (e.g., raw DB query or API that exposes the view)
  factory TransactionWithCategoryNameDTO.fromJson(Map<String, dynamic> json) {
    return TransactionWithCategoryNameDTO(
      id: json['transaction_id'],
      userId: json['user_id'],
      categoryId: json['category_id'],
      categoryName: json['category_name'], // coming from the joined view
      amount: (json['amount'] as num).toDouble(),
      type: json['type'],
      description: json['description'],
      date: DateTime.parse(json['date']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      notes: json['notes'],
    );
  }

  /// Optional: Convert to Map if needed
  Map<String, dynamic> toJson() {
    return {
      'transaction_id': id,
      'user_id': userId,
      'category_id': categoryId,
      'category_name': categoryName,
      'amount': amount,
      'type': type,
      'description': description,
      'date': date.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'notes': notes,
    };
  }

  TransactionWithCategoryName toApplication() {
    return TransactionWithCategoryName(
      id: id,
      categoryId: categoryId,
      amount: amount,
      type: _mapTypeToEnum(type),
      categoryName: categoryName,
      description: description,
      date: date,
      notes: notes,
    );
  }

  /// Private helper
  TransactionType _mapTypeToEnum(String type) {
    switch (type) {
      case 'income':
        return TransactionType.income;
      case 'expense':
        return TransactionType.expense;
      case 'transfer':
        return TransactionType.transfer;
      default:
        throw Exception('Unknown transaction type: $type');
    }
  }

/// This class is **not** meant to be converted into a domain entity directly
}
