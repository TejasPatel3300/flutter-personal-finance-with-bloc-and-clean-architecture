part of 'authentication_bloc.dart';


@freezed
class AuthenticationState with _$AuthenticationState {

  const factory AuthenticationState.initial() = AuthenticationInitial;
  const factory AuthenticationState.loading() = AuthenticationLoading;
  const factory AuthenticationState.authenticated(String userId) =
  AuthenticationAuthenticated;
  const factory AuthenticationState.unauthenticated() = AuthenticationUnauthenticated;
  const factory AuthenticationState.failure(String error) = AuthenticationFailure;

}
