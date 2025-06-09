import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/auth/repository/auth_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

import '../entity/user.dart';

class LoginUserUseCase implements UseCase<User, LoginUserParams>{
  final AuthRepository authRepository;

  LoginUserUseCase({required this.authRepository});
  @override
  Future<Either<Failure, User>> call(LoginUserParams params) async {
    return await authRepository.login(email: params.email, password: params.password);
  }
}

class LoginUserParams {
  final String email;
  final String password;

  LoginUserParams({
    required this.email,
    required this.password,
  });
}