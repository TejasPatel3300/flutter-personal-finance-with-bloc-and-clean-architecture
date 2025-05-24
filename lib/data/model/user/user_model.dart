import 'package:personal_finance_tracker/domain/auth/entity/user.dart';

class UserDTO {
  final int? id;
  final String name;
  final String email;
  final String password;

  UserDTO({
    this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory UserDTO.fromMap(Map<String, dynamic> map) {
    return UserDTO(
      id: map['user_id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
    );
  }

  User toEntity() {
    return User(name: name, email: email, password: password);
  }
}
