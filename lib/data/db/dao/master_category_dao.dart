import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/master_category_entity.dart';

@dao
abstract class MasterCategoryDao {
  @Query('SELECT * FROM MasterCategoryEntity')
  Future<List<MasterCategoryEntity>> findAllMasterCategories();

  @Query('SELECT * FROM MasterCategoryEntity WHERE masterCatId = :id')
  Future<MasterCategoryEntity?> findMasterCategoryById(int id);

  @insert
  Future<void> insertMasterCategory(MasterCategoryEntity masterCategory);

  @update
  Future<void> updateMasterCategory(MasterCategoryEntity masterCategory);

  @delete
  Future<void> deleteMasterCategory(MasterCategoryEntity masterCategory);
}
