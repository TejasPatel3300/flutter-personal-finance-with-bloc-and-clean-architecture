// interface for user-repository
import 'package:personal_finance_app/domain/models/user.dart';
import 'package:personal_finance_app/utils/typedefs.dart';

abstract class UserRepository{
  Future<EitherUserOrFailure> getUserById({required int id});

  Future<void> signUpUser({required User user});

  Future<EitherUserOrFailure> signInUser({required String email, required String password});

}