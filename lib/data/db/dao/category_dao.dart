import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/category_entity.dart';

@dao
abstract class CategoryDao {
  @Query('SELECT * FROM CategoryEntity')
  Future<List<CategoryEntity>> findAllCategories();

  @Query('SELECT * FROM CategoryEntity WHERE catId = :id')
  Future<CategoryEntity?> findCategoryById(int id);

  @insert
  Future<void> insertCategory(CategoryEntity category);

  @update
  Future<void> updateCategory(CategoryEntity category);

  @delete
  Future<void> deleteCategory(CategoryEntity category);
}
