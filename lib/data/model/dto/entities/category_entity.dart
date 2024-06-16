import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/master_category_entity.dart';

@Entity(
  foreignKeys: [
    ForeignKey(
      childColumns: ['masterCatId'],
      parentColumns: ['masterCatId'],
      entity: MasterCategoryEntity,
    )
  ],
)
class CategoryEntity {
  @PrimaryKey(autoGenerate: true)
  final int? catId;
  final int masterCatId;
  final String name;

  CategoryEntity({this.catId, required this.masterCatId, required this.name});
}
