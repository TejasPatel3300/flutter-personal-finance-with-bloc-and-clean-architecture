part of 'authentication_bloc.dart';

@Freezed(copyWith: true)
abstract class AuthenticationEvent with _$AuthenticationEvent {
  factory AuthenticationEvent.appStarted() = AppStarted;
  factory AuthenticationEvent.userLoginRequested(
      {required String email, required String password}) = UserLoginRequested;
  factory AuthenticationEvent.userSignUpRequested({required String email, required String password, required String name}) =
      UserSignUpRequested;
  factory AuthenticationEvent.userLogoutRequested({required String id}) =
      UserLogoutRequested;
}
