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
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TransactionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TransactionEvent()';
  }
}

/// @nodoc
class $TransactionEventCopyWith<$Res> {
  $TransactionEventCopyWith(
      TransactionEvent _, $Res Function(TransactionEvent) __);
}

/// @nodoc

class TransactionAddTransactionRequested implements TransactionEvent {
  const TransactionAddTransactionRequested({required this.params});

  final AddTransactionParams params;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
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

class TransactionFetchRequested implements TransactionEvent {
  const TransactionFetchRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionFetchRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TransactionEvent.fetchTransactionRequested()';
  }
}

/// @nodoc

class TransactionUpdateRequested implements TransactionEvent {
  const TransactionUpdateRequested({required this.transaction});

  final Transaction transaction;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionUpdateRequestedCopyWith<TransactionUpdateRequested>
      get copyWith =>
          _$TransactionUpdateRequestedCopyWithImpl<TransactionUpdateRequested>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionUpdateRequested &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @override
  String toString() {
    return 'TransactionEvent.updateTransactionRequested(transaction: $transaction)';
  }
}

/// @nodoc
abstract mixin class $TransactionUpdateRequestedCopyWith<$Res>
    implements $TransactionEventCopyWith<$Res> {
  factory $TransactionUpdateRequestedCopyWith(TransactionUpdateRequested value,
          $Res Function(TransactionUpdateRequested) _then) =
      _$TransactionUpdateRequestedCopyWithImpl;
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class _$TransactionUpdateRequestedCopyWithImpl<$Res>
    implements $TransactionUpdateRequestedCopyWith<$Res> {
  _$TransactionUpdateRequestedCopyWithImpl(this._self, this._then);

  final TransactionUpdateRequested _self;
  final $Res Function(TransactionUpdateRequested) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transaction = null,
  }) {
    return _then(TransactionUpdateRequested(
      transaction: null == transaction
          ? _self.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class TransactionDeleteRequested implements TransactionEvent {
  const TransactionDeleteRequested({required this.transaction});

  final Transaction transaction;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionDeleteRequestedCopyWith<TransactionDeleteRequested>
      get copyWith =>
          _$TransactionDeleteRequestedCopyWithImpl<TransactionDeleteRequested>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionDeleteRequested &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @override
  String toString() {
    return 'TransactionEvent.deleteTransactionRequested(transaction: $transaction)';
  }
}

/// @nodoc
abstract mixin class $TransactionDeleteRequestedCopyWith<$Res>
    implements $TransactionEventCopyWith<$Res> {
  factory $TransactionDeleteRequestedCopyWith(TransactionDeleteRequested value,
          $Res Function(TransactionDeleteRequested) _then) =
      _$TransactionDeleteRequestedCopyWithImpl;
  @useResult
  $Res call({Transaction transaction});
}

/// @nodoc
class _$TransactionDeleteRequestedCopyWithImpl<$Res>
    implements $TransactionDeleteRequestedCopyWith<$Res> {
  _$TransactionDeleteRequestedCopyWithImpl(this._self, this._then);

  final TransactionDeleteRequested _self;
  final $Res Function(TransactionDeleteRequested) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transaction = null,
  }) {
    return _then(TransactionDeleteRequested(
      transaction: null == transaction
          ? _self.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc
mixin _$TransactionState {
  List<TransactionWithCategoryName>? get currentTransactions;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      _$TransactionStateCopyWithImpl<TransactionState>(
          this as TransactionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionState &&
            const DeepCollectionEquality()
                .equals(other.currentTransactions, currentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentTransactions));

  @override
  String toString() {
    return 'TransactionState(currentTransactions: $currentTransactions)';
  }
}

/// @nodoc
abstract mixin class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) _then) =
      _$TransactionStateCopyWithImpl;
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._self, this._then);

  final TransactionState _self;
  final $Res Function(TransactionState) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(_self.copyWith(
      currentTransactions: freezed == currentTransactions
          ? _self.currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class TransactionInitial implements TransactionState {
  const TransactionInitial(
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

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionInitialCopyWith<TransactionInitial> get copyWith =>
      _$TransactionInitialCopyWithImpl<TransactionInitial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionInitial &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currentTransactions));

  @override
  String toString() {
    return 'TransactionState.initial(currentTransactions: $currentTransactions)';
  }
}

/// @nodoc
abstract mixin class $TransactionInitialCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory $TransactionInitialCopyWith(
          TransactionInitial value, $Res Function(TransactionInitial) _then) =
      _$TransactionInitialCopyWithImpl;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class _$TransactionInitialCopyWithImpl<$Res>
    implements $TransactionInitialCopyWith<$Res> {
  _$TransactionInitialCopyWithImpl(this._self, this._then);

  final TransactionInitial _self;
  final $Res Function(TransactionInitial) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(TransactionInitial(
      currentTransactions: freezed == currentTransactions
          ? _self._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class TransactionLoading implements TransactionState {
  const TransactionLoading(
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

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionLoadingCopyWith<TransactionLoading> get copyWith =>
      _$TransactionLoadingCopyWithImpl<TransactionLoading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionLoading &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currentTransactions));

  @override
  String toString() {
    return 'TransactionState.loading(currentTransactions: $currentTransactions)';
  }
}

/// @nodoc
abstract mixin class $TransactionLoadingCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory $TransactionLoadingCopyWith(
          TransactionLoading value, $Res Function(TransactionLoading) _then) =
      _$TransactionLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class _$TransactionLoadingCopyWithImpl<$Res>
    implements $TransactionLoadingCopyWith<$Res> {
  _$TransactionLoadingCopyWithImpl(this._self, this._then);

  final TransactionLoading _self;
  final $Res Function(TransactionLoading) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(TransactionLoading(
      currentTransactions: freezed == currentTransactions
          ? _self._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class TransactionFailure implements TransactionState {
  const TransactionFailure(
      {required this.failure,
      final List<TransactionWithCategoryName>? currentTransactions})
      : _currentTransactions = currentTransactions;

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

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionFailureCopyWith<TransactionFailure> get copyWith =>
      _$TransactionFailureCopyWithImpl<TransactionFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionFailure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure,
      const DeepCollectionEquality().hash(_currentTransactions));

  @override
  String toString() {
    return 'TransactionState.failure(failure: $failure, currentTransactions: $currentTransactions)';
  }
}

/// @nodoc
abstract mixin class $TransactionFailureCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory $TransactionFailureCopyWith(
          TransactionFailure value, $Res Function(TransactionFailure) _then) =
      _$TransactionFailureCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Failure failure,
      List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class _$TransactionFailureCopyWithImpl<$Res>
    implements $TransactionFailureCopyWith<$Res> {
  _$TransactionFailureCopyWithImpl(this._self, this._then);

  final TransactionFailure _self;
  final $Res Function(TransactionFailure) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
    Object? currentTransactions = freezed,
  }) {
    return _then(TransactionFailure(
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      currentTransactions: freezed == currentTransactions
          ? _self._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

/// @nodoc

class TransactionSuccess implements TransactionState {
  const TransactionSuccess(
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

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionSuccessCopyWith<TransactionSuccess> get copyWith =>
      _$TransactionSuccessCopyWithImpl<TransactionSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionSuccess &&
            const DeepCollectionEquality()
                .equals(other._currentTransactions, _currentTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currentTransactions));

  @override
  String toString() {
    return 'TransactionState.success(currentTransactions: $currentTransactions)';
  }
}

/// @nodoc
abstract mixin class $TransactionSuccessCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory $TransactionSuccessCopyWith(
          TransactionSuccess value, $Res Function(TransactionSuccess) _then) =
      _$TransactionSuccessCopyWithImpl;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName>? currentTransactions});
}

/// @nodoc
class _$TransactionSuccessCopyWithImpl<$Res>
    implements $TransactionSuccessCopyWith<$Res> {
  _$TransactionSuccessCopyWithImpl(this._self, this._then);

  final TransactionSuccess _self;
  final $Res Function(TransactionSuccess) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTransactions = freezed,
  }) {
    return _then(TransactionSuccess(
      currentTransactions: freezed == currentTransactions
          ? _self._currentTransactions
          : currentTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>?,
    ));
  }
}

// dart format on
