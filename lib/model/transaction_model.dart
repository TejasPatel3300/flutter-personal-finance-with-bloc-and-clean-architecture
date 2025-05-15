import 'package:personal_finance_tracker/domain/transaction/entity/transaction.dart';

class TransactionDTO {
  final int id;
  final int userId;
  final int accountId;
  final int? categoryId;
  final double amount;
  final String type; // Stored as string for DB/API ('income', 'expense', etc.)
  final String? description;
  final DateTime date;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isRecurring;
  final int? recurringId;
  final String? location;
  final String? notes;

  TransactionDTO({
    required this.id,
    required this.userId,
    required this.accountId,
    this.categoryId,
    required this.amount,
    required this.type,
    this.description,
    required this.date,
    required this.createdAt,
    required this.updatedAt,
    this.isRecurring = false,
    this.recurringId,
    this.location,
    this.notes,
  });

  /// From JSON (e.g., API)
  factory TransactionDTO.fromJson(Map<String, dynamic> json) {
    return TransactionDTO(
      id: json['transaction_id'],
      userId: json['user_id'],
      accountId: json['account_id'],
      categoryId: json['category_id'],
      amount: (json['amount'] as num).toDouble(),
      type: json['type'],
      description: json['description'],
      date: DateTime.parse(json['date']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      isRecurring: json['is_recurring'] == 1 || json['is_recurring'] == true,
      recurringId: json['recurring_id'],
      location: json['location'],
      notes: json['notes'],
    );
  }

  /// To JSON (for API or DB)
  Map<String, dynamic> toJson() {
    return {
      'transaction_id': id,
      'user_id': userId,
      'account_id': accountId,
      'category_id': categoryId,
      'amount': amount,
      'type': type,
      'description': description,
      'date': date.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'is_recurring': isRecurring ? 1 : 0,
      'recurring_id': recurringId,
      'location': location,
      'notes': notes,
    };
  }

  /// Converts Data Model → Domain Entity
  Transaction toEntity() {
    return Transaction(
      id: id,
      userId: userId,
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      type: _mapTypeToEnum(type),
      description: description,
      date: date,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isRecurring: isRecurring,
      recurringId: recurringId,
      location: location,
      notes: notes,
    );
  }

  /// Converts Domain Entity → Data Model
  factory TransactionDTO.fromEntity(Transaction entity) {
    return TransactionDTO(
      id: entity.id,
      userId: entity.userId,
      accountId: entity.accountId,
      categoryId: entity.categoryId,
      amount: entity.amount,
      type: entity.type.name,
      // enum to string
      description: entity.description,
      date: entity.date,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      isRecurring: entity.isRecurring,
      recurringId: entity.recurringId,
      location: entity.location,
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
