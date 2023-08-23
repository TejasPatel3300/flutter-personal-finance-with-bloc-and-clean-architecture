import 'package:dartz/dartz.dart';
import 'package:personal_finance_app/domain/repositories/user_repository.dart';
import 'package:personal_finance_app/utils/typedefs.dart';

import '../../models/user.dart';

class AuthenticationUseCase{
  final UserRepository userRepository;

  AuthenticationUseCase({required this.userRepository});

  Future<EitherUserOrFailure> loginUser({required String email, required String password}) async {
    final either = await userRepository.signInUser(email: email, password: password);
    return either.fold((l) => left(l), (r) => right(r));
  }

  Future<EitherUserOrFailure> signUpUser({required User user}) async {
    final either = await userRepository.signUpUser(user: user);
    return either.fold((l) => left(l), (r) => right(r));
  }
}