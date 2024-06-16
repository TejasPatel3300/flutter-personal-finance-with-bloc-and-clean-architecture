import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/category_entity.dart';

@Entity(
  foreignKeys: [
    ForeignKey(
      childColumns: ['catId'],
      parentColumns: ['catId'],
      entity: CategoryEntity,
    )
  ],
)
class SubCategoryEntity {
  @PrimaryKey(autoGenerate: true)
  final int? subCatId;
  final int catId;
  final String name;

  SubCategoryEntity({this.subCatId, required this.catId, required this.name});
}
