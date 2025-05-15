class Category {
  int? categoryId;
  final int userId;
  final String name;
  final String type; // should be 'income' or 'expense'
  final String color; // default is '#000000'
  final String? icon;
  final bool isDefault;
  final int? parentCategoryId;

  Category({
    this.categoryId,
    required this.userId,
    required this.name,
    required this.type,
    this.color = '#000000',
    this.icon,
    this.isDefault = false,
    this.parentCategoryId,
  });
}
