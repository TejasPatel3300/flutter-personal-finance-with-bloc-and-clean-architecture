import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance_tracker/domain/auth/usecase/login_user_usecase.dart';
import 'package:personal_finance_tracker/domain/auth/usecase/sign_up_usecase.dart';

import '../../domain/auth/entity/user.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final LoginUserUseCase _loginUserUseCase;
  final SignUpUseCase _signUpUseCase;

  AuthenticationBloc({required LoginUserUseCase loginUserUseCase, required SignUpUseCase signUpUseCase})
      : _loginUserUseCase = loginUserUseCase,
        _signUpUseCase = signUpUseCase,
        super(const AuthenticationState.initial()) {
    on<UserLoginRequested>(_onLoginRequest);
    on<UserSignUpRequested>(_onSignUpRequest);
    on<UserLogoutRequested>((event, emit) => null);
  }

  Future<void> _onLoginRequest(UserLoginRequested event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationState.loading());
    final LoginUserParams params = LoginUserParams(email: event.email, password: event.password);
    final either = await _loginUserUseCase.call(params);
    either.fold(
      (failure) => emit(AuthenticationState.failure(failure.message)),
      (user) => emit(AuthenticationState.authenticated(user)),
    );
  }

  Future<void> _onSignUpRequest(UserSignUpRequested event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationState.loading());
    final SignUpParams params = SignUpParams(email: event.email, password: event.password, name: event.name);
    final either = await _signUpUseCase.call(params);
    either.fold(
      (failure) => emit(AuthenticationState.failure(failure.message)),
      (user) => emit(AuthenticationState.signedUp(user)),
    );
  }
}
