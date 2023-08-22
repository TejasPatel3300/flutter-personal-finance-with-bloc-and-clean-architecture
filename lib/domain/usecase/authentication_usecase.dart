import 'package:dartz/dartz.dart';
import 'package:personal_finance_app/domain/repositories/user_repository.dart';
import 'package:personal_finance_app/utils/typedefs.dart';

class AuthenticationUseCase{
  final UserRepository userRepository;

  AuthenticationUseCase({required this.userRepository});

  Future<EitherUserOrFailure> loginUser({required String email, required String password}) async {
    final either = await userRepository.signInUser(email: email, password: password);
    return either.fold((l) => left(l), (r) => right(r));
  }
}