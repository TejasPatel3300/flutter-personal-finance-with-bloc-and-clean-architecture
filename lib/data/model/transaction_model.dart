import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';

class TransactionDTO {
  int? id;
  final int userId;
  final int? categoryId;
  final double amount;
  final String type; // Stored as string for DB/API ('income', 'expense', etc.)
  final String? description;
  final DateTime date;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? notes;

  TransactionDTO({
    this.id,
    required this.userId,
    this.categoryId,
    required this.amount,
    required this.type,
    this.description,
    required this.date,
    required this.createdAt,
    required this.updatedAt,
    this.notes,
  });

  /// From JSON (e.g., API)
  factory TransactionDTO.fromJson(Map<String, dynamic> json) {
    return TransactionDTO(
      id: json['transaction_id'],
      userId: json['user_id'],
      categoryId: json['category_id'],
      amount: (json['amount'] as num).toDouble(),
      type: json['type'],
      description: json['description'],
      date: DateTime.parse(json['date']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      notes: json['notes'],
    );
  }

  /// To JSON (for API or DB)
  Map<String, dynamic> toJson() {
    return {
      'transaction_id': id,
      'user_id': userId,
      'category_id': categoryId,
      'amount': amount,
      'type': type,
      'description': description,
      'date': date.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'notes': notes,
    };
  }

  /// Converts Data Model → Domain Entity
  Transaction toEntity() {
    return Transaction(
      id: id,
      userId: userId,
      categoryId: categoryId,
      amount: amount,
      type: _mapTypeToEnum(type),
      description: description,
      date: date,
      createdAt: createdAt,
      updatedAt: updatedAt,
      notes: notes,
    );
  }

  /// Converts Domain Entity → Data Model
  factory TransactionDTO.fromEntity(Transaction entity) {
    return TransactionDTO(
      id: entity.id,
      userId: entity.userId,
      categoryId: entity.categoryId,
      amount: entity.amount,
      type: entity.type.name,
      description: entity.description,
      date: entity.date,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      notes: entity.notes,
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
}
