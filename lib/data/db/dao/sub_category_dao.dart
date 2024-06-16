import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/sub_category_entity.dart';

@dao
abstract class SubCategoryDao {
  @Query('SELECT * FROM SubCategoryEntity')
  Future<List<SubCategoryEntity>> findAllSubCategories();

  @Query('SELECT * FROM SubCategoryEntity WHERE subCatId = :id')
  Future<SubCategoryEntity?> findSubCategoryById(int id);

  @insert
  Future<void> insertSubCategory(SubCategoryEntity subCategory);

  @update
  Future<void> updateSubCategory(SubCategoryEntity subCategory);

  @delete
  Future<void> deleteSubCategory(SubCategoryEntity subCategory);
}
