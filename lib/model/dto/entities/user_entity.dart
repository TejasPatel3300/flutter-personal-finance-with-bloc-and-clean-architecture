import 'package:floor/floor.dart';

@entity
class UserEntity {
  @primaryKey
  final int id;
  final String fullName;
  final String email;
  final String password;

  UserEntity(this.id, this.fullName, this.email, this.password);
}