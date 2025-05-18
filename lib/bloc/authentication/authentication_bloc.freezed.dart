// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationEvent()';
  }
}

/// @nodoc
abstract mixin class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) _then) =
      _$AuthenticationEventCopyWithImpl;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._self, this._then);

  final AuthenticationEvent _self;
  final $Res Function(AuthenticationEvent) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class AppStarted implements AuthenticationEvent {
  AppStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationEvent.appStarted()';
  }
}

/// @nodoc
abstract mixin class $AppStartedCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory $AppStartedCopyWith(
          AppStarted value, $Res Function(AppStarted) _then) =
      _$AppStartedCopyWithImpl;
}

/// @nodoc
class _$AppStartedCopyWithImpl<$Res> implements $AppStartedCopyWith<$Res> {
  _$AppStartedCopyWithImpl(this._self, this._then);

  final AppStarted _self;
  final $Res Function(AppStarted) _then;
}

/// @nodoc

class UserLoginRequested implements AuthenticationEvent {
  UserLoginRequested({required this.email, required this.password});

  final String email;
  final String password;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLoginRequestedCopyWith<UserLoginRequested> get copyWith =>
      _$UserLoginRequestedCopyWithImpl<UserLoginRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoginRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'AuthenticationEvent.userLoginRequested(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserLoginRequestedCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory $UserLoginRequestedCopyWith(
          UserLoginRequested value, $Res Function(UserLoginRequested) _then) =
      _$UserLoginRequestedCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserLoginRequestedCopyWithImpl<$Res>
    implements $UserLoginRequestedCopyWith<$Res> {
  _$UserLoginRequestedCopyWithImpl(this._self, this._then);

  final UserLoginRequested _self;
  final $Res Function(UserLoginRequested) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(UserLoginRequested(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserSignUpRequested implements AuthenticationEvent {
  UserSignUpRequested(
      {required this.email, required this.password, required this.name});

  final String email;
  final String password;
  final String name;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserSignUpRequestedCopyWith<UserSignUpRequested> get copyWith =>
      _$UserSignUpRequestedCopyWithImpl<UserSignUpRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSignUpRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @override
  String toString() {
    return 'AuthenticationEvent.userSignUpRequested(email: $email, password: $password, name: $name)';
  }
}

/// @nodoc
abstract mixin class $UserSignUpRequestedCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory $UserSignUpRequestedCopyWith(
          UserSignUpRequested value, $Res Function(UserSignUpRequested) _then) =
      _$UserSignUpRequestedCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password, String name});
}

/// @nodoc
class _$UserSignUpRequestedCopyWithImpl<$Res>
    implements $UserSignUpRequestedCopyWith<$Res> {
  _$UserSignUpRequestedCopyWithImpl(this._self, this._then);

  final UserSignUpRequested _self;
  final $Res Function(UserSignUpRequested) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
  }) {
    return _then(UserSignUpRequested(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserLogoutRequested implements AuthenticationEvent {
  UserLogoutRequested({required this.id});

  final String id;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLogoutRequestedCopyWith<UserLogoutRequested> get copyWith =>
      _$UserLogoutRequestedCopyWithImpl<UserLogoutRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLogoutRequested &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'AuthenticationEvent.userLogoutRequested(id: $id)';
  }
}

/// @nodoc
abstract mixin class $UserLogoutRequestedCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory $UserLogoutRequestedCopyWith(
          UserLogoutRequested value, $Res Function(UserLogoutRequested) _then) =
      _$UserLogoutRequestedCopyWithImpl;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$UserLogoutRequestedCopyWithImpl<$Res>
    implements $UserLogoutRequestedCopyWith<$Res> {
  _$UserLogoutRequestedCopyWithImpl(this._self, this._then);

  final UserLogoutRequested _self;
  final $Res Function(UserLogoutRequested) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(UserLogoutRequested(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AuthenticationState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState()';
  }
}

/// @nodoc
abstract mixin class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) _then) =
      _$AuthenticationStateCopyWithImpl;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._self, this._then);

  final AuthenticationState _self;
  final $Res Function(AuthenticationState) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class AuthenticationInitial implements AuthenticationState {
  const AuthenticationInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }
}

/// @nodoc
abstract mixin class $AuthenticationInitialCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationInitialCopyWith(AuthenticationInitial value,
          $Res Function(AuthenticationInitial) _then) =
      _$AuthenticationInitialCopyWithImpl;
}

/// @nodoc
class _$AuthenticationInitialCopyWithImpl<$Res>
    implements $AuthenticationInitialCopyWith<$Res> {
  _$AuthenticationInitialCopyWithImpl(this._self, this._then);

  final AuthenticationInitial _self;
  final $Res Function(AuthenticationInitial) _then;
}

/// @nodoc

class AuthenticationLoading implements AuthenticationState {
  const AuthenticationLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }
}

/// @nodoc
abstract mixin class $AuthenticationLoadingCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationLoadingCopyWith(AuthenticationLoading value,
          $Res Function(AuthenticationLoading) _then) =
      _$AuthenticationLoadingCopyWithImpl;
}

/// @nodoc
class _$AuthenticationLoadingCopyWithImpl<$Res>
    implements $AuthenticationLoadingCopyWith<$Res> {
  _$AuthenticationLoadingCopyWithImpl(this._self, this._then);

  final AuthenticationLoading _self;
  final $Res Function(AuthenticationLoading) _then;
}

/// @nodoc

class AuthenticationAuthenticated implements AuthenticationState {
  const AuthenticationAuthenticated(this.user);

  final User user;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticationAuthenticatedCopyWith<AuthenticationAuthenticated>
      get copyWith => _$AuthenticationAuthenticatedCopyWithImpl<
          AuthenticationAuthenticated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationAuthenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthenticationAuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationAuthenticatedCopyWith(
          AuthenticationAuthenticated value,
          $Res Function(AuthenticationAuthenticated) _then) =
      _$AuthenticationAuthenticatedCopyWithImpl;
  @override
  @useResult
  $Res call({User user});
}

/// @nodoc
class _$AuthenticationAuthenticatedCopyWithImpl<$Res>
    implements $AuthenticationAuthenticatedCopyWith<$Res> {
  _$AuthenticationAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthenticationAuthenticated _self;
  final $Res Function(AuthenticationAuthenticated) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(AuthenticationAuthenticated(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class AuthenticationUnauthenticated implements AuthenticationState {
  const AuthenticationUnauthenticated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }
}

/// @nodoc
abstract mixin class $AuthenticationUnauthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationUnauthenticatedCopyWith(
          AuthenticationUnauthenticated value,
          $Res Function(AuthenticationUnauthenticated) _then) =
      _$AuthenticationUnauthenticatedCopyWithImpl;
}

/// @nodoc
class _$AuthenticationUnauthenticatedCopyWithImpl<$Res>
    implements $AuthenticationUnauthenticatedCopyWith<$Res> {
  _$AuthenticationUnauthenticatedCopyWithImpl(this._self, this._then);

  final AuthenticationUnauthenticated _self;
  final $Res Function(AuthenticationUnauthenticated) _then;
}

/// @nodoc

class AuthenticationFailure implements AuthenticationState {
  const AuthenticationFailure(this.error);

  final String error;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticationFailureCopyWith<AuthenticationFailure> get copyWith =>
      _$AuthenticationFailureCopyWithImpl<AuthenticationFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AuthenticationState.failure(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AuthenticationFailureCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationFailureCopyWith(AuthenticationFailure value,
          $Res Function(AuthenticationFailure) _then) =
      _$AuthenticationFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AuthenticationFailureCopyWithImpl<$Res>
    implements $AuthenticationFailureCopyWith<$Res> {
  _$AuthenticationFailureCopyWithImpl(this._self, this._then);

  final AuthenticationFailure _self;
  final $Res Function(AuthenticationFailure) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AuthenticationFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AuthenticationSignedUp implements AuthenticationState {
  const AuthenticationSignedUp(this.user);

  final User user;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticationSignedUpCopyWith<AuthenticationSignedUp> get copyWith =>
      _$AuthenticationSignedUpCopyWithImpl<AuthenticationSignedUp>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationSignedUp &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthenticationState.signedUp(user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthenticationSignedUpCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationSignedUpCopyWith(AuthenticationSignedUp value,
          $Res Function(AuthenticationSignedUp) _then) =
      _$AuthenticationSignedUpCopyWithImpl;
  @override
  @useResult
  $Res call({User user});
}

/// @nodoc
class _$AuthenticationSignedUpCopyWithImpl<$Res>
    implements $AuthenticationSignedUpCopyWith<$Res> {
  _$AuthenticationSignedUpCopyWithImpl(this._self, this._then);

  final AuthenticationSignedUp _self;
  final $Res Function(AuthenticationSignedUp) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(AuthenticationSignedUp(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class AuthenticationSignUpFailure implements AuthenticationState {
  const AuthenticationSignUpFailure(this.error);

  final String error;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticationSignUpFailureCopyWith<AuthenticationSignUpFailure>
      get copyWith => _$AuthenticationSignUpFailureCopyWithImpl<
          AuthenticationSignUpFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationSignUpFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AuthenticationState.signUpFailed(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AuthenticationSignUpFailureCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationSignUpFailureCopyWith(
          AuthenticationSignUpFailure value,
          $Res Function(AuthenticationSignUpFailure) _then) =
      _$AuthenticationSignUpFailureCopyWithImpl;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AuthenticationSignUpFailureCopyWithImpl<$Res>
    implements $AuthenticationSignUpFailureCopyWith<$Res> {
  _$AuthenticationSignUpFailureCopyWithImpl(this._self, this._then);

  final AuthenticationSignUpFailure _self;
  final $Res Function(AuthenticationSignUpFailure) _then;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AuthenticationSignUpFailure(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
