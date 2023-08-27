// interface for user-repository
import 'package:personal_finance_app/domain/models/user.dart';
import 'package:personal_finance_app/utils/typedefs.dart';

abstract class UserRepository{
  Future<EitherFailureOrUser> getUserById({required int id});

  Future<EitherFailureOrUser> signUpUser({required User user});

  Future<EitherFailureOrUser> signInUser({required String email, required String password});

}