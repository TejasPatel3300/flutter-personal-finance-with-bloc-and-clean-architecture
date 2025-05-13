import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

import '../entity/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login({required String email, required String password});

  Future<Either<Failure, User>> signUp({required String name, required String email, required String password});
}
