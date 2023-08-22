part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  factory AuthenticationEvent.appStarted() = AppStarted;
  factory AuthenticationEvent.userLoginRequested({required String email, required String password}) = UserLoginRequested;
  factory AuthenticationEvent.userSignUpRequested({required User user}) = UserSignUpRequested;
  factory AuthenticationEvent.userLogoutRequested({required String id}) = UserLogoutRequested;
}

