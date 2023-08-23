import 'package:dartz/dartz.dart';
import 'package:personal_finance_app/data/db/database_provider.dart';
import 'package:personal_finance_app/domain/models/user.dart';
import 'package:personal_finance_app/domain/repositories/user_repository.dart';
import 'package:personal_finance_app/utils/failure.dart';
import 'package:personal_finance_app/utils/typedefs.dart';
import 'package:sqflite/sqflite.dart';

import '../model/dto/entities/user_entity.dart';

class UserRepositoryImpl implements UserRepository {


  @override
  Future<EitherUserOrFailure> signInUser(
      {required String email, required String password}) async {
    try {
      final dbInstance = await DatabaseProvider.instance.dbInstance;
      final userEntity =
          await dbInstance.userDao.findUserByEmailAndPassword(email, password);
      if (userEntity != null) {
        return Left(userEntity.toUser());
      } else {
        return Right(Failure(message: 'Unknown Error Occured!'));
      }
    } on DatabaseException catch (e) {
      return Right(Failure(message: e.toString()));
    } catch (e) {
      return Right(Failure(message: e.toString()));
    }
  }

  @override
  Future<EitherUserOrFailure> signUpUser({required User user}) async {
    try {
      final dbInstance = await DatabaseProvider.instance.dbInstance;
      await dbInstance.userDao.insertUser(UserEntity.fromUser(user));
      final userEntity = await dbInstance.userDao.findUserByEmailAndPassword(user.email, user.password);
      if (userEntity != null) {
        return Left(userEntity.toUser());
      } else {
        return Right(Failure(message: 'Unknown Error Occured!'));
      }
    } on DatabaseException catch (e) {
      return Right(Failure(message: e.toString()));
    } catch (e) {
      return Right(Failure(message: e.toString()));
    }
  }

  @override
  Future<EitherUserOrFailure> getUserById({required int id}) async {
    // TODO: implement getUserById
    throw UnimplementedError();
  }
}
