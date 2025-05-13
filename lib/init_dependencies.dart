import 'package:get_it/get_it.dart';
import 'package:personal_finance_tracker/bloc/authentication_bloc.dart';
import 'package:personal_finance_tracker/domain/auth/repository/auth_repository.dart';
import 'package:personal_finance_tracker/domain/auth/usecase/login_user_usecase.dart';
import 'package:personal_finance_tracker/domain/auth/usecase/sign_up_usecase.dart';
import 'package:personal_finance_tracker/repository/auth_repository_impl_sqlite.dart';

import 'data/db/db_helper.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await DatabaseHelper().database; // Initialize database
  serviceLocator
    ..registerFactory<AuthRepository>(() => AuthRepoSQLiteImpl())
    ..registerFactory<LoginUserUseCase>(
      () => LoginUserUseCase(authRepository: serviceLocator()),
    )
    ..registerFactory<SignUpUseCase>(
          () => SignUpUseCase(authRepository: serviceLocator()),
    )
    ..registerLazySingleton<AuthenticationBloc>(
      () => AuthenticationBloc(loginUserUseCase: serviceLocator(), signUpUseCase: serviceLocator()),
    );
}
