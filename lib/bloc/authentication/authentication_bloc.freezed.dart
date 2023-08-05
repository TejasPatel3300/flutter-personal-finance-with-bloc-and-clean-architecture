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
    required TResult Function(String userId) userLoggedIn,
    required TResult Function() userLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String userId)? userLoggedIn,
    TResult? Function()? userLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String userId)? userLoggedIn,
    TResult Function()? userLoggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoggedIn value) userLoggedIn,
    required TResult Function(UserLoggedOut value) userLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoggedIn value)? userLoggedIn,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    TResult Function(UserLoggedOut value)? userLoggedOut,
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
    required TResult Function(String userId) userLoggedIn,
    required TResult Function() userLoggedOut,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String userId)? userLoggedIn,
    TResult? Function()? userLoggedOut,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String userId)? userLoggedIn,
    TResult Function()? userLoggedOut,
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
    required TResult Function(UserLoggedIn value) userLoggedIn,
    required TResult Function(UserLoggedOut value) userLoggedOut,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoggedIn value)? userLoggedIn,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    TResult Function(UserLoggedOut value)? userLoggedOut,
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
abstract class _$$UserLoggedInCopyWith<$Res> {
  factory _$$UserLoggedInCopyWith(
          _$UserLoggedIn value, $Res Function(_$UserLoggedIn) then) =
      __$$UserLoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserLoggedInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserLoggedIn>
    implements _$$UserLoggedInCopyWith<$Res> {
  __$$UserLoggedInCopyWithImpl(
      _$UserLoggedIn _value, $Res Function(_$UserLoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserLoggedIn(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoggedIn extends UserLoggedIn {
  _$UserLoggedIn(this.userId) : super._();

  @override
  final String userId;

  @override
  String toString() {
    return 'AuthenticationEvent.userLoggedIn(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedIn &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInCopyWith<_$UserLoggedIn> get copyWith =>
      __$$UserLoggedInCopyWithImpl<_$UserLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String userId) userLoggedIn,
    required TResult Function() userLoggedOut,
  }) {
    return userLoggedIn(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String userId)? userLoggedIn,
    TResult? Function()? userLoggedOut,
  }) {
    return userLoggedIn?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String userId)? userLoggedIn,
    TResult Function()? userLoggedOut,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoggedIn value) userLoggedIn,
    required TResult Function(UserLoggedOut value) userLoggedOut,
  }) {
    return userLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoggedIn value)? userLoggedIn,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
  }) {
    return userLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserLoggedIn extends AuthenticationEvent {
  factory UserLoggedIn(final String userId) = _$UserLoggedIn;
  UserLoggedIn._() : super._();

  String get userId;
  @JsonKey(ignore: true)
  _$$UserLoggedInCopyWith<_$UserLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedOutCopyWith<$Res> {
  factory _$$UserLoggedOutCopyWith(
          _$UserLoggedOut value, $Res Function(_$UserLoggedOut) then) =
      __$$UserLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoggedOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserLoggedOut>
    implements _$$UserLoggedOutCopyWith<$Res> {
  __$$UserLoggedOutCopyWithImpl(
      _$UserLoggedOut _value, $Res Function(_$UserLoggedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoggedOut extends UserLoggedOut {
  _$UserLoggedOut() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.userLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(String userId) userLoggedIn,
    required TResult Function() userLoggedOut,
  }) {
    return userLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(String userId)? userLoggedIn,
    TResult? Function()? userLoggedOut,
  }) {
    return userLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(String userId)? userLoggedIn,
    TResult Function()? userLoggedOut,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStarted value) appStarted,
    required TResult Function(UserLoggedIn value) userLoggedIn,
    required TResult Function(UserLoggedOut value) userLoggedOut,
  }) {
    return userLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStarted value)? appStarted,
    TResult? Function(UserLoggedIn value)? userLoggedIn,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
  }) {
    return userLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStarted value)? appStarted,
    TResult Function(UserLoggedIn value)? userLoggedIn,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut(this);
    }
    return orElse();
  }
}

abstract class UserLoggedOut extends AuthenticationEvent {
  factory UserLoggedOut() = _$UserLoggedOut;
  UserLoggedOut._() : super._();
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String userId)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String userId)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? failure,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationInitial value)? initial,
    TResult? Function(AuthenticationLoading value)? loading,
    TResult? Function(AuthenticationAuthenticated value)? authenticated,
    TResult? Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationInitial value)? initial,
    TResult Function(AuthenticationLoading value)? loading,
    TResult Function(AuthenticationAuthenticated value)? authenticated,
    TResult Function(AuthenticationUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationFailure value)? failure,
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
