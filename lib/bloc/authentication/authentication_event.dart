part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  factory AuthenticationEvent.appStarted() = AppStarted;
  factory AuthenticationEvent.userLoggedIn(String userId) = UserLoggedIn;
  factory AuthenticationEvent.userLoggedOut() = UserLoggedOut;
}

