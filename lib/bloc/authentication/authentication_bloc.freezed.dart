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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(String email, String password, String name)
        userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(String email, String password, String name)?
        userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(String email, String password, String name)?
        userSignUpRequested,
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

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppStartedImplCopyWith<$Res> {
  factory _$$AppStartedImplCopyWith(
          _$AppStartedImpl value, $Res Function(_$AppStartedImpl) then) =
      __$$AppStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AppStartedImpl>
    implements _$$AppStartedImplCopyWith<$Res> {
  __$$AppStartedImplCopyWithImpl(
      _$AppStartedImpl _value, $Res Function(_$AppStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStartedImpl implements AppStarted {
  _$AppStartedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.appStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(String email, String password, String name)
        userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(String email, String password, String name)?
        userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(String email, String password, String name)?
        userSignUpRequested,
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

abstract class AppStarted implements AuthenticationEvent {
  factory AppStarted() = _$AppStartedImpl;
}

/// @nodoc
abstract class _$$UserLoginRequestedImplCopyWith<$Res> {
  factory _$$UserLoginRequestedImplCopyWith(_$UserLoginRequestedImpl value,
          $Res Function(_$UserLoginRequestedImpl) then) =
      __$$UserLoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserLoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserLoginRequestedImpl>
    implements _$$UserLoginRequestedImplCopyWith<$Res> {
  __$$UserLoginRequestedImplCopyWithImpl(_$UserLoginRequestedImpl _value,
      $Res Function(_$UserLoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginRequestedImpl(
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

class _$UserLoginRequestedImpl implements UserLoginRequested {
  _$UserLoginRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.userLoginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginRequestedImplCopyWith<_$UserLoginRequestedImpl> get copyWith =>
      __$$UserLoginRequestedImplCopyWithImpl<_$UserLoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(String email, String password, String name)
        userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return userLoginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(String email, String password, String name)?
        userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return userLoginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(String email, String password, String name)?
        userSignUpRequested,
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

abstract class UserLoginRequested implements AuthenticationEvent {
  factory UserLoginRequested(
      {required final String email,
      required final String password}) = _$UserLoginRequestedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoginRequestedImplCopyWith<_$UserLoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserSignUpRequestedImplCopyWith<$Res> {
  factory _$$UserSignUpRequestedImplCopyWith(_$UserSignUpRequestedImpl value,
          $Res Function(_$UserSignUpRequestedImpl) then) =
      __$$UserSignUpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String name});
}

/// @nodoc
class __$$UserSignUpRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserSignUpRequestedImpl>
    implements _$$UserSignUpRequestedImplCopyWith<$Res> {
  __$$UserSignUpRequestedImplCopyWithImpl(_$UserSignUpRequestedImpl _value,
      $Res Function(_$UserSignUpRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
  }) {
    return _then(_$UserSignUpRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserSignUpRequestedImpl implements UserSignUpRequested {
  _$UserSignUpRequestedImpl(
      {required this.email, required this.password, required this.name});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthenticationEvent.userSignUpRequested(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpRequestedImplCopyWith<_$UserSignUpRequestedImpl> get copyWith =>
      __$$UserSignUpRequestedImplCopyWithImpl<_$UserSignUpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(String email, String password, String name)
        userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return userSignUpRequested(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(String email, String password, String name)?
        userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return userSignUpRequested?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(String email, String password, String name)?
        userSignUpRequested,
    TResult Function(String id)? userLogoutRequested,
    required TResult orElse(),
  }) {
    if (userSignUpRequested != null) {
      return userSignUpRequested(email, password, name);
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

abstract class UserSignUpRequested implements AuthenticationEvent {
  factory UserSignUpRequested(
      {required final String email,
      required final String password,
      required final String name}) = _$UserSignUpRequestedImpl;

  String get email;
  String get password;
  String get name;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSignUpRequestedImplCopyWith<_$UserSignUpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLogoutRequestedImplCopyWith<$Res> {
  factory _$$UserLogoutRequestedImplCopyWith(_$UserLogoutRequestedImpl value,
          $Res Function(_$UserLogoutRequestedImpl) then) =
      __$$UserLogoutRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$UserLogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserLogoutRequestedImpl>
    implements _$$UserLogoutRequestedImplCopyWith<$Res> {
  __$$UserLogoutRequestedImplCopyWithImpl(_$UserLogoutRequestedImpl _value,
      $Res Function(_$UserLogoutRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UserLogoutRequestedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLogoutRequestedImpl implements UserLogoutRequested {
  _$UserLogoutRequestedImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AuthenticationEvent.userLogoutRequested(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLogoutRequestedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLogoutRequestedImplCopyWith<_$UserLogoutRequestedImpl> get copyWith =>
      __$$UserLogoutRequestedImplCopyWithImpl<_$UserLogoutRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String email, String password) userLoginRequested,
    required TResult Function(String email, String password, String name)
        userSignUpRequested,
    required TResult Function(String id) userLogoutRequested,
  }) {
    return userLogoutRequested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String email, String password)? userLoginRequested,
    TResult? Function(String email, String password, String name)?
        userSignUpRequested,
    TResult? Function(String id)? userLogoutRequested,
  }) {
    return userLogoutRequested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String email, String password)? userLoginRequested,
    TResult Function(String email, String password, String name)?
        userSignUpRequested,
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

abstract class UserLogoutRequested implements AuthenticationEvent {
  factory UserLogoutRequested({required final String id}) =
      _$UserLogoutRequestedImpl;

  String get id;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLogoutRequestedImplCopyWith<_$UserLogoutRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
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
    TResult? Function(User user)? authenticated,
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
    TResult Function(User user)? authenticated,
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

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthenticationInitialImplCopyWith<$Res> {
  factory _$$AuthenticationInitialImplCopyWith(
          _$AuthenticationInitialImpl value,
          $Res Function(_$AuthenticationInitialImpl) then) =
      __$$AuthenticationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationInitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationInitialImpl>
    implements _$$AuthenticationInitialImplCopyWith<$Res> {
  __$$AuthenticationInitialImplCopyWithImpl(_$AuthenticationInitialImpl _value,
      $Res Function(_$AuthenticationInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationInitialImpl implements AuthenticationInitial {
  const _$AuthenticationInitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
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
    TResult? Function(User user)? authenticated,
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
    TResult Function(User user)? authenticated,
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
  const factory AuthenticationInitial() = _$AuthenticationInitialImpl;
}

/// @nodoc
abstract class _$$AuthenticationLoadingImplCopyWith<$Res> {
  factory _$$AuthenticationLoadingImplCopyWith(
          _$AuthenticationLoadingImpl value,
          $Res Function(_$AuthenticationLoadingImpl) then) =
      __$$AuthenticationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationLoadingImpl>
    implements _$$AuthenticationLoadingImplCopyWith<$Res> {
  __$$AuthenticationLoadingImplCopyWithImpl(_$AuthenticationLoadingImpl _value,
      $Res Function(_$AuthenticationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationLoadingImpl implements AuthenticationLoading {
  const _$AuthenticationLoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
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
    TResult? Function(User user)? authenticated,
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
    TResult Function(User user)? authenticated,
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
  const factory AuthenticationLoading() = _$AuthenticationLoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticationAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticationAuthenticatedImplCopyWith(
          _$AuthenticationAuthenticatedImpl value,
          $Res Function(_$AuthenticationAuthenticatedImpl) then) =
      __$$AuthenticationAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthenticationAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationAuthenticatedImpl>
    implements _$$AuthenticationAuthenticatedImplCopyWith<$Res> {
  __$$AuthenticationAuthenticatedImplCopyWithImpl(
      _$AuthenticationAuthenticatedImpl _value,
      $Res Function(_$AuthenticationAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticationAuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthenticationAuthenticatedImpl implements AuthenticationAuthenticated {
  const _$AuthenticationAuthenticatedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationAuthenticatedImplCopyWith<_$AuthenticationAuthenticatedImpl>
      get copyWith => __$$AuthenticationAuthenticatedImplCopyWithImpl<
          _$AuthenticationAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) failure,
    required TResult Function(User user) signedUp,
    required TResult Function(String error) signUpFailed,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
    TResult? Function(User user)? signedUp,
    TResult? Function(String error)? signUpFailed,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
    TResult Function(User user)? signedUp,
    TResult Function(String error)? signUpFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
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
  const factory AuthenticationAuthenticated(final User user) =
      _$AuthenticationAuthenticatedImpl;

  User get user;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationAuthenticatedImplCopyWith<_$AuthenticationAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationUnauthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticationUnauthenticatedImplCopyWith(
          _$AuthenticationUnauthenticatedImpl value,
          $Res Function(_$AuthenticationUnauthenticatedImpl) then) =
      __$$AuthenticationUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationUnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationUnauthenticatedImpl>
    implements _$$AuthenticationUnauthenticatedImplCopyWith<$Res> {
  __$$AuthenticationUnauthenticatedImplCopyWithImpl(
      _$AuthenticationUnauthenticatedImpl _value,
      $Res Function(_$AuthenticationUnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticationUnauthenticatedImpl
    implements AuthenticationUnauthenticated {
  const _$AuthenticationUnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationUnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
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
    TResult? Function(User user)? authenticated,
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
    TResult Function(User user)? authenticated,
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
      _$AuthenticationUnauthenticatedImpl;
}

/// @nodoc
abstract class _$$AuthenticationFailureImplCopyWith<$Res> {
  factory _$$AuthenticationFailureImplCopyWith(
          _$AuthenticationFailureImpl value,
          $Res Function(_$AuthenticationFailureImpl) then) =
      __$$AuthenticationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthenticationFailureImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationFailureImpl>
    implements _$$AuthenticationFailureImplCopyWith<$Res> {
  __$$AuthenticationFailureImplCopyWithImpl(_$AuthenticationFailureImpl _value,
      $Res Function(_$AuthenticationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthenticationFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationFailureImpl implements AuthenticationFailure {
  const _$AuthenticationFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthenticationState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => __$$AuthenticationFailureImplCopyWithImpl<
          _$AuthenticationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
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
    TResult? Function(User user)? authenticated,
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
    TResult Function(User user)? authenticated,
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
      _$AuthenticationFailureImpl;

  String get error;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationFailureImplCopyWith<_$AuthenticationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignedUpImplCopyWith<$Res> {
  factory _$$AuthenticationSignedUpImplCopyWith(
          _$AuthenticationSignedUpImpl value,
          $Res Function(_$AuthenticationSignedUpImpl) then) =
      __$$AuthenticationSignedUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthenticationSignedUpImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationSignedUpImpl>
    implements _$$AuthenticationSignedUpImplCopyWith<$Res> {
  __$$AuthenticationSignedUpImplCopyWithImpl(
      _$AuthenticationSignedUpImpl _value,
      $Res Function(_$AuthenticationSignedUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticationSignedUpImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthenticationSignedUpImpl implements AuthenticationSignedUp {
  const _$AuthenticationSignedUpImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.signedUp(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignedUpImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignedUpImplCopyWith<_$AuthenticationSignedUpImpl>
      get copyWith => __$$AuthenticationSignedUpImplCopyWithImpl<
          _$AuthenticationSignedUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
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
    TResult? Function(User user)? authenticated,
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
    TResult Function(User user)? authenticated,
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
      _$AuthenticationSignedUpImpl;

  User get user;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSignedUpImplCopyWith<_$AuthenticationSignedUpImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSignUpFailureImplCopyWith<$Res> {
  factory _$$AuthenticationSignUpFailureImplCopyWith(
          _$AuthenticationSignUpFailureImpl value,
          $Res Function(_$AuthenticationSignUpFailureImpl) then) =
      __$$AuthenticationSignUpFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthenticationSignUpFailureImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationSignUpFailureImpl>
    implements _$$AuthenticationSignUpFailureImplCopyWith<$Res> {
  __$$AuthenticationSignUpFailureImplCopyWithImpl(
      _$AuthenticationSignUpFailureImpl _value,
      $Res Function(_$AuthenticationSignUpFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthenticationSignUpFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationSignUpFailureImpl implements AuthenticationSignUpFailure {
  const _$AuthenticationSignUpFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthenticationState.signUpFailed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSignUpFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSignUpFailureImplCopyWith<_$AuthenticationSignUpFailureImpl>
      get copyWith => __$$AuthenticationSignUpFailureImplCopyWithImpl<
          _$AuthenticationSignUpFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user) authenticated,
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
    TResult? Function(User user)? authenticated,
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
    TResult Function(User user)? authenticated,
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
      _$AuthenticationSignUpFailureImpl;

  String get error;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationSignUpFailureImplCopyWith<_$AuthenticationSignUpFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
