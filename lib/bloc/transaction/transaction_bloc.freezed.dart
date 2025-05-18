// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionEvent {
  AddTransactionParams get params;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionEventCopyWith<TransactionEvent> get copyWith =>
      _$TransactionEventCopyWithImpl<TransactionEvent>(
          this as TransactionEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionEvent &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'TransactionEvent(params: $params)';
  }
}

/// @nodoc
abstract mixin class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) _then) =
      _$TransactionEventCopyWithImpl;
  @useResult
  $Res call({AddTransactionParams params});
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._self, this._then);

  final TransactionEvent _self;
  final $Res Function(TransactionEvent) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_self.copyWith(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddTransactionParams,
    ));
  }
}

/// @nodoc

class TransactionAddTransactionRequested implements TransactionEvent {
  const TransactionAddTransactionRequested({required this.params});

  @override
  final AddTransactionParams params;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionAddTransactionRequestedCopyWith<
          TransactionAddTransactionRequested>
      get copyWith => _$TransactionAddTransactionRequestedCopyWithImpl<
          TransactionAddTransactionRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAddTransactionRequested &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'TransactionEvent.addTransactionRequested(params: $params)';
  }
}

/// @nodoc
abstract mixin class $TransactionAddTransactionRequestedCopyWith<$Res>
    implements $TransactionEventCopyWith<$Res> {
  factory $TransactionAddTransactionRequestedCopyWith(
          TransactionAddTransactionRequested value,
          $Res Function(TransactionAddTransactionRequested) _then) =
      _$TransactionAddTransactionRequestedCopyWithImpl;
  @override
  @useResult
  $Res call({AddTransactionParams params});
}

/// @nodoc
class _$TransactionAddTransactionRequestedCopyWithImpl<$Res>
    implements $TransactionAddTransactionRequestedCopyWith<$Res> {
  _$TransactionAddTransactionRequestedCopyWithImpl(this._self, this._then);

  final TransactionAddTransactionRequested _self;
  final $Res Function(TransactionAddTransactionRequested) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(TransactionAddTransactionRequested(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddTransactionParams,
    ));
  }
}

/// @nodoc
mixin _$TransactionState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TransactionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TransactionState()';
  }
}

/// @nodoc

class Initial implements TransactionState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TransactionState.initial()';
  }
}

// dart format on
