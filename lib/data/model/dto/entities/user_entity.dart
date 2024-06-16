import 'package:floor/floor.dart';
import 'package:personal_finance_app/domain/models/user.dart';

@Entity(indices: [
  Index(value: ['fullName', 'email'], unique: true)
])
class UserEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String? fullName;
  final String? password;
  final String? email;
  final String? createdAt;

  UserEntity({this.id, required this.fullName, required this.password, required this.email, required this.createdAt});

  UserEntity.fromUser(User user)
      : id = user.id,
        fullName = user.fullName,
        email = user.email,
        password = user.password,
        createdAt = user.createdAt;

  User toUser() => User(id: id, fullName: fullName ?? '', email: email ?? '', password: password ?? '');
}
