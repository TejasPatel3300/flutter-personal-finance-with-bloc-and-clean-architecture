import 'package:floor/floor.dart';

import '../../model/dto/entities/user_entity.dart';

@dao
abstract class UserDao {
  @Insert(onConflict: OnConflictStrategy.fail)
  Future<void> insertUser(UserEntity user);

  @Query('SELECT * FROM UserEntity')
  Stream<List<UserEntity>> getAllUserAsStream();

  @Query('SELECT * FROM users ORDER BY id DESC LIMIT 1')
  Future<UserEntity?> getLastAddedUser();

  @Query('SELECT * FROM UserEntity WHERE email = :email AND password = :password')
  Future<UserEntity?> findUserByEmailAndPassword(String email, String password);
}