import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/auth/repository/auth_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

import '../entity/user.dart';

class SignUpUseCase implements UseCase<User, SignUpParams>{
  final AuthRepository authRepository;

  SignUpUseCase({required this.authRepository});
  @override
  Future<Either<Failure, User>> call(SignUpParams params) async {
    return await authRepository.signUp(email: params.email, password: params.password, name: params.name);
  }
}

class SignUpParams {
  final String email;
  final String password;
  final String name;

  SignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}