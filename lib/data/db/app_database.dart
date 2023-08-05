import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/db/dao/user_dao.dart';
import 'package:personal_finance_app/model/dto/entities/user_entity.dart';

@Database(version: 1, entities: [UserEntity])
abstract class AppDatabase extends FloorDatabase{
  UserDao get userDao;
}