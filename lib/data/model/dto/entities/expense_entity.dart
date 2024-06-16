import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/model/dto/entities/sub_category_entity.dart';
import 'package:personal_finance_app/data/model/dto/entities/user_entity.dart';

@Entity(
    foreignKeys: [
      ForeignKey(
        childColumns: ['userId'],
        parentColumns: ['id'],
        entity: UserEntity,
      ),
      ForeignKey(
        childColumns: ['subCatId'],
        parentColumns: ['subCatId'],
        entity: SubCategoryEntity,
      )
    ]
)
class ExpenseEntity {
  @PrimaryKey(autoGenerate: true)
  final int? expenseId;
  final int userId;
  final int subCatId;
  final double amount;
  final String date;
  final String description;
  final String paymentMethod;

  ExpenseEntity({this.expenseId, required this.userId, required this.subCatId, required this.amount, required this.date, required this.description, required this.paymentMethod});
}
