import 'package:personal_finance_tracker/domain/category/entity/category.dart';

class CategoryDTO {
  int? categoryId;
  final int userId;
  final String name;
  final String type; // should be 'income' or 'expense'
  final String color; // default is '#000000'
  final String? icon;
  final bool isDefault;
  final int? parentCategoryId;
  final DateTime createdAt;

  CategoryDTO({
    this.categoryId,
    required this.userId,
    required this.name,
    required this.type,
    this.color = '#000000',
    this.icon,
    this.isDefault = false,
    this.parentCategoryId,
    required this.createdAt,
  });

  factory CategoryDTO.fromMap(Map<String, dynamic> map) {
    return CategoryDTO(
      categoryId: map['category_id'],
      userId: map['user_id'],
      name: map['name'],
      type: map['type'],
      color: map['color'] ?? '#000000',
      icon: map['icon'],
      isDefault: map['is_default'] == 1,
      parentCategoryId: map['parent_category_id'],
      createdAt: DateTime.parse(map['created_at']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'category_id': categoryId,
      'user_id': userId,
      'name': name,
      'type': type,
      'color': color,
      'icon': icon,
      'is_default': isDefault ? 1 : 0,
      'parent_category_id': parentCategoryId,
      'created_at': createdAt.toIso8601String(),
    };
  }

  Category toEntity() {
    return Category(
      userId: userId,
      name: name,
      type: type,
      isDefault: isDefault,
      color: color,
      categoryId: categoryId,
      icon: icon,
      parentCategoryId: parentCategoryId,
    );
  }
}
