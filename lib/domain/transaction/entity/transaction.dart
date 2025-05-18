
class Transaction {
  int? id;
  final int userId;
  final int? categoryId;
  final double amount;
  final TransactionType type;
  final String? description;
  final DateTime date;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? location;
  final String? notes;

  Transaction({
    this.id,
    required this.userId,
    this.categoryId,
    required this.amount,
    required this.type,
    this.description,
    required this.date,
    required this.createdAt,
    required this.updatedAt,
    this.location,
    this.notes,
  });

  /// Example domain logic
  bool isIncome() => type == TransactionType.income;
  bool isExpense() => type == TransactionType.expense;
  bool isTransfer() => type == TransactionType.transfer;

  /// Add more methods if needed, like updating values with immutability
  Transaction copyWith({
    double? amount,
    String? description,
    DateTime? date,
    bool? isRecurring,
    String? notes,
  }) {
    return Transaction(
      id: id,
      userId: userId,
      categoryId: categoryId,
      amount: amount ?? this.amount,
      type: type,
      description: description ?? this.description,
      date: date ?? this.date,
      createdAt: createdAt,
      updatedAt: DateTime.now(), // Business rule: updates timestamp
      location: location,
      notes: notes ?? this.notes,
    );
  }
}

/// Enums represent the allowed transaction types as defined by DB CHECK constraint
enum TransactionType { income, expense, transfer }
