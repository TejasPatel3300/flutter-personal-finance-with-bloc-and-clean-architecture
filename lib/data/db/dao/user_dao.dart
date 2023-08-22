import 'package:floor/floor.dart';
import 'package:personal_finance_app/model/dto/entities/user_entity.dart';

@dao
abstract class UserDao {
  @Insert(onConflict: OnConflictStrategy.fail)
  Future<void> insertUser(UserEntity user);

  @Query('SELECT * FROM UserEntity')
  Stream<List<UserEntity>> getAllUserAsStream();

  @Query('SELECT * FROM UserEntity WHERE email = :email AND password = :password')
  Future<UserEntity?> findUserByEmailAndPassword(String email, String password);
}