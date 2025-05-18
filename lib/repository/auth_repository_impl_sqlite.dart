import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/data/db/dao/user_dao.dart';
import 'package:personal_finance_tracker/data/model/user_model.dart';
import 'package:personal_finance_tracker/domain/auth/entity/user.dart';
import 'package:personal_finance_tracker/domain/auth/repository/auth_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';
import 'package:sqflite/sqflite.dart';

class AuthRepoSQLiteImpl implements AuthRepository {
  final _userDao = UserDao();

  @override
  Future<Either<Failure, User>> login({required String email, required String password}) async {
    try {
      final response = await _userDao.getUserByEmailAndPassword(email: email, password: password);
      if (response.isEmpty) {
        throw Exception('Incorrect username or password!');
      }
      final userDTO = UserDTO.fromMap(response.first);
      final user = userDTO.toEntity();
      return Right(user);
    } on DatabaseException catch (e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> signUp({required String name, required String email, required String password}) async {
    try {
      final UserDTO userDTO = UserDTO(name: name, email: email, password: password);
      final res = await _userDao.insertUser(userDTO.toMap());
      if (res) {
        final userData = await _userDao.getUserByEmailAndPassword(email: email, password: password);
        final userDTO = UserDTO.fromMap(userData.first);
        final user = userDTO.toEntity();
        return Right(user);
      }
      throw Exception('User already exist!');
    } on DatabaseException catch (e, st) {
      print('error: $e\nst: $st');
      return Left(Failure(message: e.toString()));
    } catch (e, st) {
      print('error: $e\nst: $st');
      return Left(Failure(message: e.toString()));
    }
  }
}
