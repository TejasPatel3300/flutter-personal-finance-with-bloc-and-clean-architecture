import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_finance_app/data/repositories/user_repository_impl.dart';
import 'package:personal_finance_app/domain/models/user.dart';
import 'package:personal_finance_app/domain/usecase/authentication/authentication_usecase.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationUseCase authUseCase =
      AuthenticationUseCase(userRepository: UserRepositoryImpl());
  AuthenticationBloc() : super(const AuthenticationState.initial()) {
    on<UserLoginRequested>(_onLoginRequest);
    on<UserSignUpRequested>(_onSignUpRequest);
    on<UserLogoutRequested>((event, emit) => null);
    //  on<AppStarted>((event, emit) => null);
    //  on<UserLoggedIn>((event, emit) => null);
    //  on<UserLoggedOut>((event, emit) => null);
  }

  Future<void> _onLoginRequest(
      UserLoginRequested event, Emitter<AuthenticationState> emit) async {
    final either = await authUseCase.loginUser(
        email: event.email, password: event.password);
    either.fold(
      (user) => emit(AuthenticationState.authenticated('${user.id ?? ''}')),
      (failure) => emit(AuthenticationState.failure(failure.message)),
    );
  }

  Future<void> _onSignUpRequest(
      UserSignUpRequested event, Emitter<AuthenticationState> emit) async {
    final either = await authUseCase.signUpUser(user: event.user);
    either.fold(
          (user) => emit(AuthenticationState.signedUp(user)),
          (failure) => emit(AuthenticationState.signUpFailed(failure.message)),
    );
  }
}
