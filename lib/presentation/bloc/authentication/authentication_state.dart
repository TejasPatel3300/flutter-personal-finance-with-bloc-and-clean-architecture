part of 'authentication_bloc.dart';


@freezed
class AuthenticationState with _$AuthenticationState {

  const factory AuthenticationState.initial() = AuthenticationInitial;
  const factory AuthenticationState.loading() = AuthenticationLoading;
  const factory AuthenticationState.authenticated(String userId) = AuthenticationAuthenticated;

  const factory AuthenticationState.unauthenticated() = AuthenticationUnauthenticated;
  const factory AuthenticationState.failure(String error) = AuthenticationFailure;

  const factory AuthenticationState.signedUp(User user) = AuthenticationSignedUp;
  const factory AuthenticationState.signUpFailed(String error) = AuthenticationSignUpFailure;
}
