import 'package:floor/floor.dart';
import 'package:personal_finance_app/domain/models/user.dart';

@Entity(indices: [
  Index(value: ['fullName', 'email'], unique: true)
])
class UserEntity {
  @PrimaryKey(autoGenerate: true)
  int? id;
  final String fullName;
  final String email;
  final String password;

  UserEntity({
    this.id,
    required this.fullName,
    required this.email,
    required this.password,
  });

  UserEntity.fromUser(User user)
      : id = user.id,
        fullName = user.fullName,
        email = user.email,
        password = user.password;

  User toUser() => User(id: id,fullName: fullName, email: email, password: password);
}
