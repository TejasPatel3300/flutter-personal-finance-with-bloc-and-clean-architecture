// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(User user) userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(User user)? userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(User user)? userSignUpRequested,
    TResult Function(String id)? userLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoginRequested value) userLoginRequested,
    required TResult Function(UserSignUpRequested value) userSignUpRequested,
    required TResult Function(UserLogoutRequested value) userLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoginRequested value)? userLoginRequested,
    TResult? Function(UserSignUpRequested value)? userSignUpRequested,
    TResult? Function(UserLogoutRequested value)? userLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoginRequested value)? userLoginRequested,
    TResult Function(UserSignUpRequested value)? userSignUpRequested,
    TResult Function(UserLogoutRequested value)? userLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStartedCopyWith<$Res> {
  factory _$$AppStartedCopyWith(
          _$AppStarted value, $Res Function(_$AppStarted) then) =
      __$$AppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AppStarted>
    implements _$$AppStartedCopyWith<$Res> {
  __$$AppStartedCopyWithImpl(
      _$AppStarted _value, $Res Function(_$AppStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStarted extends AppStarted {
  _$AppStarted() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(User user) userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(User user)? userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(User user)? userSignUpRequested,
    TResult Function(String id)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoginRequested value) userLoginRequested,
    required TResult Function(UserSignUpRequested value) userSignUpRequested,
    required TResult Function(UserLogoutRequested value) userLogoutRequested,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoginRequested value)? userLoginRequested,
    TResult? Function(UserSignUpRequested value)? userSignUpRequested,
    TResult? Function(UserLogoutRequested value)? userLogoutRequested,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoginRequested value)? userLoginRequested,
    TResult Function(UserSignUpRequested value)? userSignUpRequested,
    TResult Function(UserLogoutRequested value)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class AppStarted extends AuthenticationEvent {
  factory AppStarted() = _$AppStarted;
  AppStarted._() : super._();
}

/// @nodoc
abstract class _$$UserLoginRequestedCopyWith<$Res> {
  factory _$$UserLoginRequestedCopyWith(_$UserLoginRequested value,
          $Res Function(_$UserLoginRequested) then) =
      __$$UserLoginRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoginRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserLoginRequested>
    implements _$$UserLoginRequestedCopyWith<$Res> {
  __$$UserLoginRequestedCopyWithImpl(
      _$UserLoginRequested _value, $Res Function(_$UserLoginRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginRequested(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginRequested extends UserLoginRequested {
  _$UserLoginRequested({required this.email, required this.password})
      : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.userLoginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginRequestedCopyWith<_$UserLoginRequested> get copyWith =>
      __$$UserLoginRequestedCopyWithImpl<_$UserLoginRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(User user) userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return userLoginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(User user)? userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return userLoginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(User user)? userSignUpRequested,
    TResult Function(String id)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (userLoginRequested != null) {
      return userLoginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoginRequested value) userLoginRequested,
    required TResult Function(UserSignUpRequested value) userSignUpRequested,
    required TResult Function(UserLogoutRequested value) userLogoutRequested,
  }) {
    return userLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoginRequested value)? userLoginRequested,
    TResult? Function(UserSignUpRequested value)? userSignUpRequested,
    TResult? Function(UserLogoutRequested value)? userLogoutRequested,
  }) {
    return userLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoginRequested value)? userLoginRequested,
    TResult Function(UserSignUpRequested value)? userSignUpRequested,
    TResult Function(UserLogoutRequested value)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (userLoginRequested != null) {
      return userLoginRequested(this);
    }
    return orElse();
  }
}

abstract class UserLoginRequested extends AuthenticationEvent {
  factory UserLoginRequested(
      {required final String email,
      required final String password}) = _$UserLoginRequested;
  UserLoginRequested._() : super._();

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$UserLoginRequestedCopyWith<_$UserLoginRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSignUpRequestedCopyWith<$Res> {
  factory _$$UserSignUpRequestedCopyWith(_$UserSignUpRequested value,
          $Res Function(_$UserSignUpRequested) then) =
      __$$UserSignUpRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserSignUpRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserSignUpRequested>
    implements _$$UserSignUpRequestedCopyWith<$Res> {
  __$$UserSignUpRequestedCopyWithImpl(
      _$UserSignUpRequested _value, $Res Function(_$UserSignUpRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserSignUpRequested(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserSignUpRequested extends UserSignUpRequested {
  _$UserSignUpRequested({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationEvent.userSignUpRequested(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpRequested &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpRequestedCopyWith<_$UserSignUpRequested> get copyWith =>
      __$$UserSignUpRequestedCopyWithImpl<_$UserSignUpRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(User user) userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return userSignUpRequested(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(User user)? userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return userSignUpRequested?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(User user)? userSignUpRequested,
    TResult Function(String id)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (userSignUpRequested != null) {
      return userSignUpRequested(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoginRequested value) userLoginRequested,
    required TResult Function(UserSignUpRequested value) userSignUpRequested,
    required TResult Function(UserLogoutRequested value) userLogoutRequested,
  }) {
    return userSignUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoginRequested value)? userLoginRequested,
    TResult? Function(UserSignUpRequested value)? userSignUpRequested,
    TResult? Function(UserLogoutRequested value)? userLogoutRequested,
  }) {
    return userSignUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoginRequested value)? userLoginRequested,
    TResult Function(UserSignUpRequested value)? userSignUpRequested,
    TResult Function(UserLogoutRequested value)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (userSignUpRequested != null) {
      return userSignUpRequested(this);
    }
    return orElse();
  }
}

abstract class UserSignUpRequested extends AuthenticationEvent {
  factory UserSignUpRequested({required final User user}) =
      _$UserSignUpRequested;
  UserSignUpRequested._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$UserSignUpRequestedCopyWith<_$UserSignUpRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLogoutRequestedCopyWith<$Res> {
  factory _$$UserLogoutRequestedCopyWith(_$UserLogoutRequested value,
          $Res Function(_$UserLogoutRequested) then) =
      __$$UserLogoutRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UserLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserLogoutRequested>
    implements _$$UserLogoutRequestedCopyWith<$Res> {
  __$$UserLogoutRequestedCopyWithImpl(
      _$UserLogoutRequested _value, $Res Function(_$UserLogoutRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UserLogoutRequested(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLogoutRequested extends UserLogoutRequested {
  _$UserLogoutRequested({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'AuthenticationEvent.userLogoutRequested(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLogoutRequested &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLogoutRequestedCopyWith<_$UserLogoutRequested> get copyWith =>
      __$$UserLogoutRequestedCopyWithImpl<_$UserLogoutRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(User user) userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return userLogoutRequested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(User user)? userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return userLogoutRequested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(User user)? userSignUpRequested,
    TResult Function(String id)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (userLogoutRequested != null) {
      return userLogoutRequested(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoginRequested value) userLoginRequested,
    required TResult Function(UserSignUpRequested value) userSignUpRequested,
    required TResult Function(UserLogoutRequested value) userLogoutRequested,
  }) {
    return userLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoginRequested value)? userLoginRequested,
    TResult? Function(UserSignUpRequested value)? userSignUpRequested,
    TResult? Function(UserLogoutRequested value)? userLogoutRequested,
  }) {
    return userLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoginRequested value)? userLoginRequested,
    TResult Function(UserSignUpRequested value)? userSignUpRequested,
    TResult Function(UserLogoutRequested value)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (userLogoutRequested != null) {
      return userLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class UserLogoutRequested extends AuthenticationEvent {
  factory UserLogoutRequested({required final String id}) =
      _$UserLogoutRequested;
  UserLogoutRequested._() : super._();

  String get id;
  @JsonKey(ignore: true)
  _$$UserLogoutRequestedCopyWith<_$UserLogoutRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationInitialCopyWith<$Res> {
  factory _$$AuthenticationInitialCopyWith(_$AuthenticationInitial value,
          $Res Function(_$AuthenticationInitial) then) =
      __$$AuthenticationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationInitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationInitial>
    implements _$$AuthenticationInitialCopyWith<$Res> {
  __$$AuthenticationInitialCopyWithImpl(_$AuthenticationInitial _value,
      $Res Function(_$AuthenticationInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationInitial implements AuthenticationInitial {
  const _$AuthenticationInitial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthenticationInitial implements AuthenticationState {
  const factory AuthenticationInitial() = _$AuthenticationInitial;
}

/// @nodoc
abstract class _$$AuthenticationLoadingCopyWith<$Res> {
  factory _$$AuthenticationLoadingCopyWith(_$AuthenticationLoading value,
          $Res Function(_$AuthenticationLoading) then) =
      __$$AuthenticationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationLoading>
    implements _$$AuthenticationLoadingCopyWith<$Res> {
  __$$AuthenticationLoadingCopyWithImpl(_$AuthenticationLoading _value,
      $Res Function(_$AuthenticationLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationLoading implements AuthenticationLoading {
  const _$AuthenticationLoading();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLoading implements AuthenticationState {
  const factory AuthenticationLoading() = _$AuthenticationLoading;
}

/// @nodoc
abstract class _$$AuthenticationAuthenticatedCopyWith<$Res> {
  factory _$$AuthenticationAuthenticatedCopyWith(
          _$AuthenticationAuthenticated value,
          $Res Function(_$AuthenticationAuthenticated) then) =
      __$$AuthenticationAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$AuthenticationAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationAuthenticated>
    implements _$$AuthenticationAuthenticatedCopyWith<$Res> {
  __$$AuthenticationAuthenticatedCopyWithImpl(
      _$AuthenticationAuthenticated _value,
      $Res Function(_$AuthenticationAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$AuthenticationAuthenticated(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationAuthenticated implements AuthenticationAuthenticated {
  const _$AuthenticationAuthenticated(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationAuthenticated &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationAuthenticatedCopyWith<_$AuthenticationAuthenticated>
      get copyWith => __$$AuthenticationAuthenticatedCopyWithImpl<
          _$AuthenticationAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return authenticated(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return authenticated?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationAuthenticated implements AuthenticationState {
  const factory AuthenticationAuthenticated(final String userId) =
      _$AuthenticationAuthenticated;

  String get userId;
  @JsonKey(ignore: true)
  _$$AuthenticationAuthenticatedCopyWith<_$AuthenticationAuthenticated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationUnauthenticatedCopyWith<$Res> {
  factory _$$AuthenticationUnauthenticatedCopyWith(
          _$AuthenticationUnauthenticated value,
          $Res Function(_$AuthenticationUnauthenticated) then) =
      __$$AuthenticationUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationUnauthenticated>
    implements _$$AuthenticationUnauthenticatedCopyWith<$Res> {
  __$$AuthenticationUnauthenticatedCopyWithImpl(
      _$AuthenticationUnauthenticated _value,
      $Res Function(_$AuthenticationUnauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationUnauthenticated implements AuthenticationUnauthenticated {
  const _$AuthenticationUnauthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticationUnauthenticated implements AuthenticationState {
  const factory AuthenticationUnauthenticated() =
      _$AuthenticationUnauthenticated;
}

/// @nodoc
abstract class _$$AuthenticationFailureCopyWith<$Res> {
  factory _$$AuthenticationFailureCopyWith(_$AuthenticationFailure value,
          $Res Function(_$AuthenticationFailure) then) =
      __$$AuthenticationFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthenticationFailureCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationFailure>
    implements _$$AuthenticationFailureCopyWith<$Res> {
  __$$AuthenticationFailureCopyWithImpl(_$AuthenticationFailure _value,
      $Res Function(_$AuthenticationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthenticationFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationFailure implements AuthenticationFailure {
  const _$AuthenticationFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthenticationState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationFailureCopyWith<_$AuthenticationFailure> get copyWith =>
      __$$AuthenticationFailureCopyWithImpl<_$AuthenticationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailure implements AuthenticationState {
  const factory AuthenticationFailure(final String error) =
      _$AuthenticationFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthenticationFailureCopyWith<_$AuthenticationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignedUpCopyWith<$Res> {
  factory _$$AuthenticationSignedUpCopyWith(_$AuthenticationSignedUp value,
          $Res Function(_$AuthenticationSignedUp) then) =
      __$$AuthenticationSignedUpCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthenticationSignedUpCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationSignedUp>
    implements _$$AuthenticationSignedUpCopyWith<$Res> {
  __$$AuthenticationSignedUpCopyWithImpl(_$AuthenticationSignedUp _value,
      $Res Function(_$AuthenticationSignedUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticationSignedUp(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthenticationSignedUp implements AuthenticationSignedUp {
  const _$AuthenticationSignedUp(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.signedUp(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignedUp &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignedUpCopyWith<_$AuthenticationSignedUp> get copyWith =>
      __$$AuthenticationSignedUpCopyWithImpl<_$AuthenticationSignedUp>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return signedUp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return signedUp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) {
    return signedUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) {
    return signedUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSignedUp implements AuthenticationState {
  const factory AuthenticationSignedUp(final User user) =
      _$AuthenticationSignedUp;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticationSignedUpCopyWith<_$AuthenticationSignedUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignUpFailureCopyWith<$Res> {
  factory _$$AuthenticationSignUpFailureCopyWith(
          _$AuthenticationSignUpFailure value,
          $Res Function(_$AuthenticationSignUpFailure) then) =
      __$$AuthenticationSignUpFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthenticationSignUpFailureCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationSignUpFailure>
    implements _$$AuthenticationSignUpFailureCopyWith<$Res> {
  __$$AuthenticationSignUpFailureCopyWithImpl(
      _$AuthenticationSignUpFailure _value,
      $Res Function(_$AuthenticationSignUpFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthenticationSignUpFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationSignUpFailure implements AuthenticationSignUpFailure {
  const _$AuthenticationSignUpFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthenticationState.signUpFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignUpFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignUpFailureCopyWith<_$AuthenticationSignUpFailure>
      get copyWith => __$$AuthenticationSignUpFailureCopyWithImpl<
          _$AuthenticationSignUpFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String userId) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return signUpFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return signUpFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationInitial value) initial,
    required TResult Function(AuthenticationLoading value) loading,
    required TResult Function(AuthenticationAuthenticated value) authenticated,
    required TResult Function(AuthenticationUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationFailure value) failure,
    required TResult Function(AuthenticationSignedUp value) signedUp,
    required TResult Function(AuthenticationSignUpFailure value) signUpFailed,
  }) {
    return signUpFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
    TResult? Function(AuthenticationSignedUp value)? signedUp,
    TResult? Function(AuthenticationSignUpFailure value)? signUpFailed,
  }) {
    return signUpFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
    TResult Function(AuthenticationSignedUp value)? signedUp,
    TResult Function(AuthenticationSignUpFailure value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSignUpFailure implements AuthenticationState {
  const factory AuthenticationSignUpFailure(final String error) =
      _$AuthenticationSignUpFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthenticationSignUpFailureCopyWith<_$AuthenticationSignUpFailure>
      get copyWith => throw _privateConstructorUsedError;
}
