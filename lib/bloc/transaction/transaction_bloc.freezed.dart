// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddTransactionParams params)
        addTransactionRequested,
    required TResult Function() fetchTransactionRequested,
    required TResult Function(Transaction transaction)
        updateTransactionRequested,
    required TResult Function(Transaction transaction)
        deleteTransactionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTransactionParams params)? addTransactionRequested,
    TResult? Function()? fetchTransactionRequested,
    TResult? Function(Transaction transaction)? updateTransactionRequested,
    TResult? Function(Transaction transaction)? deleteTransactionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTransactionParams params)? addTransactionRequested,
    TResult Function()? fetchTransactionRequested,
    TResult Function(Transaction transaction)? updateTransactionRequested,
    TResult Function(Transaction transaction)? deleteTransactionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionAddTransactionRequested value)
        addTransactionRequested,
    required TResult Function(TransactionFetchRequested value)
        fetchTransactionRequested,
    required TResult Function(TransactionUpdateRequested value)
        updateTransactionRequested,
    required TResult Function(TransactionDeleteRequested value)
        deleteTransactionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult? Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult? Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult? Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionAddTransactionRequestedImplCopyWith<$Res> {
  factory _$$TransactionAddTransactionRequestedImplCopyWith(
          _$TransactionAddTransactionRequestedImpl value,
          $Res Function(_$TransactionAddTransactionRequestedImpl) then) =
      __$$TransactionAddTransactionRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddTransactionParams params});
}

/// @nodoc
class __$$TransactionAddTransactionRequestedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionAddTransactionRequestedImpl>
    implements _$$TransactionAddTransactionRequestedImplCopyWith<$Res> {
  __$$TransactionAddTransactionRequestedImplCopyWithImpl(
      _$TransactionAddTransactionRequestedImpl _value,
      $Res Function(_$TransactionAddTransactionRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TransactionAddTransactionRequestedImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddTransactionParams,
    ));
  }
}

/// @nodoc

class _$TransactionAddTransactionRequestedImpl
    implements TransactionAddTransactionRequested {
  const _$TransactionAddTransactionRequestedImpl({required this.params});

  @override
  final AddTransactionParams params;

  @override
  String toString() {
    return 'TransactionEvent.addTransactionRequested(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionAddTransactionRequestedImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionAddTransactionRequestedImplCopyWith<
          _$TransactionAddTransactionRequestedImpl>
      get copyWith => __$$TransactionAddTransactionRequestedImplCopyWithImpl<
          _$TransactionAddTransactionRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddTransactionParams params)
        addTransactionRequested,
    required TResult Function() fetchTransactionRequested,
    required TResult Function(Transaction transaction)
        updateTransactionRequested,
    required TResult Function(Transaction transaction)
        deleteTransactionRequested,
  }) {
    return addTransactionRequested(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTransactionParams params)? addTransactionRequested,
    TResult? Function()? fetchTransactionRequested,
    TResult? Function(Transaction transaction)? updateTransactionRequested,
    TResult? Function(Transaction transaction)? deleteTransactionRequested,
  }) {
    return addTransactionRequested?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTransactionParams params)? addTransactionRequested,
    TResult Function()? fetchTransactionRequested,
    TResult Function(Transaction transaction)? updateTransactionRequested,
    TResult Function(Transaction transaction)? deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (addTransactionRequested != null) {
      return addTransactionRequested(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionAddTransactionRequested value)
        addTransactionRequested,
    required TResult Function(TransactionFetchRequested value)
        fetchTransactionRequested,
    required TResult Function(TransactionUpdateRequested value)
        updateTransactionRequested,
    required TResult Function(TransactionDeleteRequested value)
        deleteTransactionRequested,
  }) {
    return addTransactionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult? Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult? Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult? Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
  }) {
    return addTransactionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (addTransactionRequested != null) {
      return addTransactionRequested(this);
    }
    return orElse();
  }
}

abstract class TransactionAddTransactionRequested implements TransactionEvent {
  const factory TransactionAddTransactionRequested(
          {required final AddTransactionParams params}) =
      _$TransactionAddTransactionRequestedImpl;

  AddTransactionParams get params;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionAddTransactionRequestedImplCopyWith<
          _$TransactionAddTransactionRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionFetchRequestedImplCopyWith<$Res> {
  factory _$$TransactionFetchRequestedImplCopyWith(
          _$TransactionFetchRequestedImpl value,
          $Res Function(_$TransactionFetchRequestedImpl) then) =
      __$$TransactionFetchRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionFetchRequestedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionFetchRequestedImpl>
    implements _$$TransactionFetchRequestedImplCopyWith<$Res> {
  __$$TransactionFetchRequestedImplCopyWithImpl(
      _$TransactionFetchRequestedImpl _value,
      $Res Function(_$TransactionFetchRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionFetchRequestedImpl implements TransactionFetchRequested {
  const _$TransactionFetchRequestedImpl();

  @override
  String toString() {
    return 'TransactionEvent.fetchTransactionRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFetchRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddTransactionParams params)
        addTransactionRequested,
    required TResult Function() fetchTransactionRequested,
    required TResult Function(Transaction transaction)
        updateTransactionRequested,
    required TResult Function(Transaction transaction)
        deleteTransactionRequested,
  }) {
    return fetchTransactionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTransactionParams params)? addTransactionRequested,
    TResult? Function()? fetchTransactionRequested,
    TResult? Function(Transaction transaction)? updateTransactionRequested,
    TResult? Function(Transaction transaction)? deleteTransactionRequested,
  }) {
    return fetchTransactionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTransactionParams params)? addTransactionRequested,
    TResult Function()? fetchTransactionRequested,
    TResult Function(Transaction transaction)? updateTransactionRequested,
    TResult Function(Transaction transaction)? deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (fetchTransactionRequested != null) {
      return fetchTransactionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionAddTransactionRequested value)
        addTransactionRequested,
    required TResult Function(TransactionFetchRequested value)
        fetchTransactionRequested,
    required TResult Function(TransactionUpdateRequested value)
        updateTransactionRequested,
    required TResult Function(TransactionDeleteRequested value)
        deleteTransactionRequested,
  }) {
    return fetchTransactionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult? Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult? Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult? Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
  }) {
    return fetchTransactionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (fetchTransactionRequested != null) {
      return fetchTransactionRequested(this);
    }
    return orElse();
  }
}

abstract class TransactionFetchRequested implements TransactionEvent {
  const factory TransactionFetchRequested() = _$TransactionFetchRequestedImpl;
}

/// @nodoc
abstract class _$$TransactionUpdateRequestedImplCopyWith<$Res> {
  factory _$$TransactionUpdateRequestedImplCopyWith(
          _$TransactionUpdateRequestedImpl value,
          $Res Function(_$TransactionUpdateRequestedImpl) then) =
      __$$TransactionUpdateRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class __$$TransactionUpdateRequestedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionUpdateRequestedImpl>
    implements _$$TransactionUpdateRequestedImplCopyWith<$Res> {
  __$$TransactionUpdateRequestedImplCopyWithImpl(
      _$TransactionUpdateRequestedImpl _value,
      $Res Function(_$TransactionUpdateRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$TransactionUpdateRequestedImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$TransactionUpdateRequestedImpl implements TransactionUpdateRequested {
  const _$TransactionUpdateRequestedImpl({required this.transaction});

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransactionEvent.updateTransactionRequested(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionUpdateRequestedImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionUpdateRequestedImplCopyWith<_$TransactionUpdateRequestedImpl>
      get copyWith => __$$TransactionUpdateRequestedImplCopyWithImpl<
          _$TransactionUpdateRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddTransactionParams params)
        addTransactionRequested,
    required TResult Function() fetchTransactionRequested,
    required TResult Function(Transaction transaction)
        updateTransactionRequested,
    required TResult Function(Transaction transaction)
        deleteTransactionRequested,
  }) {
    return updateTransactionRequested(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTransactionParams params)? addTransactionRequested,
    TResult? Function()? fetchTransactionRequested,
    TResult? Function(Transaction transaction)? updateTransactionRequested,
    TResult? Function(Transaction transaction)? deleteTransactionRequested,
  }) {
    return updateTransactionRequested?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTransactionParams params)? addTransactionRequested,
    TResult Function()? fetchTransactionRequested,
    TResult Function(Transaction transaction)? updateTransactionRequested,
    TResult Function(Transaction transaction)? deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (updateTransactionRequested != null) {
      return updateTransactionRequested(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionAddTransactionRequested value)
        addTransactionRequested,
    required TResult Function(TransactionFetchRequested value)
        fetchTransactionRequested,
    required TResult Function(TransactionUpdateRequested value)
        updateTransactionRequested,
    required TResult Function(TransactionDeleteRequested value)
        deleteTransactionRequested,
  }) {
    return updateTransactionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult? Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult? Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult? Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
  }) {
    return updateTransactionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (updateTransactionRequested != null) {
      return updateTransactionRequested(this);
    }
    return orElse();
  }
}

abstract class TransactionUpdateRequested implements TransactionEvent {
  const factory TransactionUpdateRequested(
          {required final Transaction transaction}) =
      _$TransactionUpdateRequestedImpl;

  Transaction get transaction;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionUpdateRequestedImplCopyWith<_$TransactionUpdateRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionDeleteRequestedImplCopyWith<$Res> {
  factory _$$TransactionDeleteRequestedImplCopyWith(
          _$TransactionDeleteRequestedImpl value,
          $Res Function(_$TransactionDeleteRequestedImpl) then) =
      __$$TransactionDeleteRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class __$$TransactionDeleteRequestedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res,
        _$TransactionDeleteRequestedImpl>
    implements _$$TransactionDeleteRequestedImplCopyWith<$Res> {
  __$$TransactionDeleteRequestedImplCopyWithImpl(
      _$TransactionDeleteRequestedImpl _value,
      $Res Function(_$TransactionDeleteRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$TransactionDeleteRequestedImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$TransactionDeleteRequestedImpl implements TransactionDeleteRequested {
  const _$TransactionDeleteRequestedImpl({required this.transaction});

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransactionEvent.deleteTransactionRequested(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDeleteRequestedImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDeleteRequestedImplCopyWith<_$TransactionDeleteRequestedImpl>
      get copyWith => __$$TransactionDeleteRequestedImplCopyWithImpl<
          _$TransactionDeleteRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddTransactionParams params)
        addTransactionRequested,
    required TResult Function() fetchTransactionRequested,
    required TResult Function(Transaction transaction)
        updateTransactionRequested,
    required TResult Function(Transaction transaction)
        deleteTransactionRequested,
  }) {
    return deleteTransactionRequested(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddTransactionParams params)? addTransactionRequested,
    TResult? Function()? fetchTransactionRequested,
    TResult? Function(Transaction transaction)? updateTransactionRequested,
    TResult? Function(Transaction transaction)? deleteTransactionRequested,
  }) {
    return deleteTransactionRequested?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddTransactionParams params)? addTransactionRequested,
    TResult Function()? fetchTransactionRequested,
    TResult Function(Transaction transaction)? updateTransactionRequested,
    TResult Function(Transaction transaction)? deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (deleteTransactionRequested != null) {
      return deleteTransactionRequested(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionAddTransactionRequested value)
        addTransactionRequested,
    required TResult Function(TransactionFetchRequested value)
        fetchTransactionRequested,
    required TResult Function(TransactionUpdateRequested value)
        updateTransactionRequested,
    required TResult Function(TransactionDeleteRequested value)
        deleteTransactionRequested,
  }) {
    return deleteTransactionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult? Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult? Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult? Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
  }) {
    return deleteTransactionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionAddTransactionRequested value)?
        addTransactionRequested,
    TResult Function(TransactionFetchRequested value)?
        fetchTransactionRequested,
    TResult Function(TransactionUpdateRequested value)?
        updateTransactionRequested,
    TResult Function(TransactionDeleteRequested value)?
        deleteTransactionRequested,
    required TResult orElse(),
  }) {
    if (deleteTransactionRequested != null) {
      return deleteTransactionRequested(this);
    }
    return orElse();
  }
}

abstract class TransactionDeleteRequested implements TransactionEvent {
  const factory TransactionDeleteRequested(
          {required final Transaction transaction}) =
      _$TransactionDeleteRequestedImpl;

  Transaction get transaction;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDeleteRequestedImplCopyWith<_$TransactionDeleteRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  List<TransactionWithCategoryName>? get currentTransactions =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        initial,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        loading,
    required TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)
        failure,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult? Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionFailure value) failure,
    required TResult Function(TransactionSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionFailure value)? failure,
    TResult? Function(TransactionSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionFailure value)? failure,
    TResult Function(TransactionSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(_value.copyWith(
      currentTransactions: freezed == currentTransactions
          ? _value.currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionInitialImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionInitialImplCopyWith(_$TransactionInitialImpl value,
          $Res Function(_$TransactionInitialImpl) then) =
      __$$TransactionInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class __$$TransactionInitialImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionInitialImpl>
    implements _$$TransactionInitialImplCopyWith<$Res> {
  __$$TransactionInitialImplCopyWithImpl(_$TransactionInitialImpl _value,
      $Res Function(_$TransactionInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(_$TransactionInitialImpl(
      currentTransactions: freezed == currentTransactions
          ? _value._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class _$TransactionInitialImpl implements TransactionInitial {
  const _$TransactionInitialImpl(
      {final List<TransactionWithCategoryName>? currentTransactions})
      : _currentTransactions = currentTransactions;

  final List<TransactionWithCategoryName>? _currentTransactions;
  @override
  List<TransactionWithCategoryName>? get currentTransactions {
    final value = _currentTransactions;
    if (value == null) return null;
    if (_currentTransactions is EqualUnmodifiableListView)
      return _currentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionState.initial(currentTransactions: $currentTransactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currentTransactions));

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionInitialImplCopyWith<_$TransactionInitialImpl> get copyWith =>
      __$$TransactionInitialImplCopyWithImpl<_$TransactionInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        initial,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        loading,
    required TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)
        failure,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        success,
  }) {
    return initial(currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult? Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
  }) {
    return initial?.call(currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionFailure value) failure,
    required TResult Function(TransactionSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionFailure value)? failure,
    TResult? Function(TransactionSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionFailure value)? failure,
    TResult Function(TransactionSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionInitial implements TransactionState {
  const factory TransactionInitial(
          {final List<TransactionWithCategoryName>? currentTransactions}) =
      _$TransactionInitialImpl;

  @override
  List<TransactionWithCategoryName>? get currentTransactions;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionInitialImplCopyWith<_$TransactionInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionLoadingImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionLoadingImplCopyWith(_$TransactionLoadingImpl value,
          $Res Function(_$TransactionLoadingImpl) then) =
      __$$TransactionLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class __$$TransactionLoadingImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadingImpl>
    implements _$$TransactionLoadingImplCopyWith<$Res> {
  __$$TransactionLoadingImplCopyWithImpl(_$TransactionLoadingImpl _value,
      $Res Function(_$TransactionLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(_$TransactionLoadingImpl(
      currentTransactions: freezed == currentTransactions
          ? _value._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class _$TransactionLoadingImpl implements TransactionLoading {
  const _$TransactionLoadingImpl(
      {final List<TransactionWithCategoryName>? currentTransactions})
      : _currentTransactions = currentTransactions;

  final List<TransactionWithCategoryName>? _currentTransactions;
  @override
  List<TransactionWithCategoryName>? get currentTransactions {
    final value = _currentTransactions;
    if (value == null) return null;
    if (_currentTransactions is EqualUnmodifiableListView)
      return _currentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionState.loading(currentTransactions: $currentTransactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currentTransactions));

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionLoadingImplCopyWith<_$TransactionLoadingImpl> get copyWith =>
      __$$TransactionLoadingImplCopyWithImpl<_$TransactionLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        initial,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        loading,
    required TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)
        failure,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        success,
  }) {
    return loading(currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult? Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
  }) {
    return loading?.call(currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(currentTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionFailure value) failure,
    required TResult Function(TransactionSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionFailure value)? failure,
    TResult? Function(TransactionSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionFailure value)? failure,
    TResult Function(TransactionSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionLoading implements TransactionState {
  const factory TransactionLoading(
          {final List<TransactionWithCategoryName>? currentTransactions}) =
      _$TransactionLoadingImpl;

  @override
  List<TransactionWithCategoryName>? get currentTransactions;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionLoadingImplCopyWith<_$TransactionLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionFailureImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionFailureImplCopyWith(_$TransactionFailureImpl value,
          $Res Function(_$TransactionFailureImpl) then) =
      __$$TransactionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure failure,
      List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class __$$TransactionFailureImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionFailureImpl>
    implements _$$TransactionFailureImplCopyWith<$Res> {
  __$$TransactionFailureImplCopyWithImpl(_$TransactionFailureImpl _value,
      $Res Function(_$TransactionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? currentTransactions = freezed,
  }) {
    return _then(_$TransactionFailureImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      currentTransactions: freezed == currentTransactions
          ? _value._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class _$TransactionFailureImpl implements TransactionFailure {
  const _$TransactionFailureImpl(
      {required this.failure,
      final List<TransactionWithCategoryName>? currentTransactions})
      : _currentTransactions = currentTransactions;

  @override
  final Failure failure;
  final List<TransactionWithCategoryName>? _currentTransactions;
  @override
  List<TransactionWithCategoryName>? get currentTransactions {
    final value = _currentTransactions;
    if (value == null) return null;
    if (_currentTransactions is EqualUnmodifiableListView)
      return _currentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionState.failure(failure: $failure, currentTransactions: $currentTransactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure,
      const DeepCollectionEquality().hash(_currentTransactions));

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFailureImplCopyWith<_$TransactionFailureImpl> get copyWith =>
      __$$TransactionFailureImplCopyWithImpl<_$TransactionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        initial,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        loading,
    required TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)
        failure,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        success,
  }) {
    return failure(this.failure, currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult? Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
  }) {
    return failure?.call(this.failure, currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, currentTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionFailure value) failure,
    required TResult Function(TransactionSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionFailure value)? failure,
    TResult? Function(TransactionSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionFailure value)? failure,
    TResult Function(TransactionSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TransactionFailure implements TransactionState {
  const factory TransactionFailure(
          {required final Failure failure,
          final List<TransactionWithCategoryName>? currentTransactions}) =
      _$TransactionFailureImpl;

  Failure get failure;
  @override
  List<TransactionWithCategoryName>? get currentTransactions;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionFailureImplCopyWith<_$TransactionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionSuccessImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionSuccessImplCopyWith(_$TransactionSuccessImpl value,
          $Res Function(_$TransactionSuccessImpl) then) =
      __$$TransactionSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class __$$TransactionSuccessImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionSuccessImpl>
    implements _$$TransactionSuccessImplCopyWith<$Res> {
  __$$TransactionSuccessImplCopyWithImpl(_$TransactionSuccessImpl _value,
      $Res Function(_$TransactionSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(_$TransactionSuccessImpl(
      currentTransactions: freezed == currentTransactions
          ? _value._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class _$TransactionSuccessImpl implements TransactionSuccess {
  const _$TransactionSuccessImpl(
      {final List<TransactionWithCategoryName>? currentTransactions})
      : _currentTransactions = currentTransactions;

  final List<TransactionWithCategoryName>? _currentTransactions;
  @override
  List<TransactionWithCategoryName>? get currentTransactions {
    final value = _currentTransactions;
    if (value == null) return null;
    if (_currentTransactions is EqualUnmodifiableListView)
      return _currentTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionState.success(currentTransactions: $currentTransactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currentTransactions));

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionSuccessImplCopyWith<_$TransactionSuccessImpl> get copyWith =>
      __$$TransactionSuccessImplCopyWithImpl<_$TransactionSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        initial,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        loading,
    required TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)
        failure,
    required TResult Function(
            List<TransactionWithCategoryName>? currentTransactions)
        success,
  }) {
    return success(currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult? Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult? Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
  }) {
    return success?.call(currentTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        initial,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        loading,
    TResult Function(Failure failure,
            List<TransactionWithCategoryName>? currentTransactions)?
        failure,
    TResult Function(List<TransactionWithCategoryName>? currentTransactions)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(currentTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionInitial value) initial,
    required TResult Function(TransactionLoading value) loading,
    required TResult Function(TransactionFailure value) failure,
    required TResult Function(TransactionSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionInitial value)? initial,
    TResult? Function(TransactionLoading value)? loading,
    TResult? Function(TransactionFailure value)? failure,
    TResult? Function(TransactionSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionInitial value)? initial,
    TResult Function(TransactionLoading value)? loading,
    TResult Function(TransactionFailure value)? failure,
    TResult Function(TransactionSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TransactionSuccess implements TransactionState {
  const factory TransactionSuccess(
          {final List<TransactionWithCategoryName>? currentTransactions}) =
      _$TransactionSuccessImpl;

  @override
  List<TransactionWithCategoryName>? get currentTransactions;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionSuccessImplCopyWith<_$TransactionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
