import 'package:get_it/get_it.dart';
import 'package:personal_finance_tracker/bloc/authentication/authentication_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/transaction_bloc.dart';
import 'package:personal_finance_tracker/domain/auth/repository/auth_repository.dart';
import 'package:personal_finance_tracker/domain/auth/usecase/login_user_usecase.dart';
import 'package:personal_finance_tracker/domain/auth/usecase/sign_up_usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/repository/transaction_repository.dart';
import 'package:personal_finance_tracker/domain/transaction/usecase/add_transaction_usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/usecase/get_all_transactions_usecase.dart';
import 'package:personal_finance_tracker/domain/transaction/usecase/get_transations_by_type_usecase.dart';
import 'package:personal_finance_tracker/repository/auth_repository_impl_sqlite.dart';
import 'package:personal_finance_tracker/repository/transaction_repository_Impl_sqlite.dart';

import 'data/db/db_helper.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await DatabaseHelper().database; // Initialize database

  // authentication
  _initAuthenticationDependencies();

  // transaction
  _initTransactionDependencies();

}

void _initAuthenticationDependencies() {
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

void _initTransactionDependencies() {
  serviceLocator
    ..registerFactory<TransactionRepository>(() => TransactionRepositoryImplSqlite())
    ..registerFactory<AddTransactionUseCase>(
          () => AddTransactionUseCase(transactionRepository: serviceLocator()),
    )
    ..registerFactory<GetAllTransactionsUseCase>(
          () => GetAllTransactionsUseCase(transactionRepository: serviceLocator()),
    )
    ..registerFactory<GetTransactionsByTypeUseCase>(
          () => GetTransactionsByTypeUseCase(transactionRepository: serviceLocator()),
    )
    ..registerLazySingleton<TransactionBloc>(
          () => TransactionBloc(
        addTransactionUseCase: serviceLocator(),
        getAllTransactionsUseCase: serviceLocator(),
        getTransactionsByTypeUseCase: serviceLocator(),
      ),
    );
}
