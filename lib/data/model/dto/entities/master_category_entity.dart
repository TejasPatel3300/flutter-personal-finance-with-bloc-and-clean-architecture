import 'package:floor/floor.dart';

@Entity()
class MasterCategoryEntity {
  @PrimaryKey(autoGenerate: true)
  final int? masterCatId;
  final String name;

  MasterCategoryEntity({this.masterCatId, required this.name});
}
