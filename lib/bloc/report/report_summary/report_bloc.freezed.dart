// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportEvent()';
  }
}

/// @nodoc
class $ReportEventCopyWith<$Res> {
  $ReportEventCopyWith(ReportEvent _, $Res Function(ReportEvent) __);
}

/// @nodoc

class Started implements ReportEvent {
  const Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportEvent.started()';
  }
}

/// @nodoc

class ReportEventFetch implements ReportEvent {
  const ReportEventFetch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportEvent.fetch()';
  }
}

/// @nodoc

class ReportEventUpdate implements ReportEvent {
  const ReportEventUpdate(
      {required final List<TransactionWithCategoryName> updatedTransactions})
      : _updatedTransactions = updatedTransactions;

  final List<TransactionWithCategoryName> _updatedTransactions;
  List<TransactionWithCategoryName> get updatedTransactions {
    if (_updatedTransactions is EqualUnmodifiableListView)
      return _updatedTransactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updatedTransactions);
  }

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportEventUpdateCopyWith<ReportEventUpdate> get copyWith =>
      _$ReportEventUpdateCopyWithImpl<ReportEventUpdate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportEventUpdate &&
            const DeepCollectionEquality()
                .equals(other._updatedTransactions, _updatedTransactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_updatedTransactions));

  @override
  String toString() {
    return 'ReportEvent.update(updatedTransactions: $updatedTransactions)';
  }
}

/// @nodoc
abstract mixin class $ReportEventUpdateCopyWith<$Res>
    implements $ReportEventCopyWith<$Res> {
  factory $ReportEventUpdateCopyWith(
          ReportEventUpdate value, $Res Function(ReportEventUpdate) _then) =
      _$ReportEventUpdateCopyWithImpl;
  @useResult
  $Res call({List<TransactionWithCategoryName> updatedTransactions});
}

/// @nodoc
class _$ReportEventUpdateCopyWithImpl<$Res>
    implements $ReportEventUpdateCopyWith<$Res> {
  _$ReportEventUpdateCopyWithImpl(this._self, this._then);

  final ReportEventUpdate _self;
  final $Res Function(ReportEventUpdate) _then;

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? updatedTransactions = null,
  }) {
    return _then(ReportEventUpdate(
      updatedTransactions: null == updatedTransactions
          ? _self._updatedTransactions
          : updatedTransactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>,
    ));
  }
}

/// @nodoc
mixin _$ReportState {
  Map<String?, List<TransactionWithCategoryName>> get data;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportStateCopyWith<ReportState> get copyWith =>
      _$ReportStateCopyWithImpl<ReportState>(this as ReportState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ReportState(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) _then) =
      _$ReportStateCopyWithImpl;
  @useResult
  $Res call({Map<String?, List<TransactionWithCategoryName>> data});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._self, this._then);

  final ReportState _self;
  final $Res Function(ReportState) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String?, List<TransactionWithCategoryName>>,
    ));
  }
}

/// @nodoc

class ReportInitial implements ReportState {
  const ReportInitial(
      {required final Map<String?, List<TransactionWithCategoryName>> data})
      : _data = data;

  final Map<String?, List<TransactionWithCategoryName>> _data;
  @override
  Map<String?, List<TransactionWithCategoryName>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportInitialCopyWith<ReportInitial> get copyWith =>
      _$ReportInitialCopyWithImpl<ReportInitial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportInitial &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ReportState.initial(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ReportInitialCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory $ReportInitialCopyWith(
          ReportInitial value, $Res Function(ReportInitial) _then) =
      _$ReportInitialCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String?, List<TransactionWithCategoryName>> data});
}

/// @nodoc
class _$ReportInitialCopyWithImpl<$Res>
    implements $ReportInitialCopyWith<$Res> {
  _$ReportInitialCopyWithImpl(this._self, this._then);

  final ReportInitial _self;
  final $Res Function(ReportInitial) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(ReportInitial(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String?, List<TransactionWithCategoryName>>,
    ));
  }
}

/// @nodoc

class ReportLoading implements ReportState {
  const ReportLoading(
      {required final Map<String?, List<TransactionWithCategoryName>> data})
      : _data = data;

  final Map<String?, List<TransactionWithCategoryName>> _data;
  @override
  Map<String?, List<TransactionWithCategoryName>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportLoadingCopyWith<ReportLoading> get copyWith =>
      _$ReportLoadingCopyWithImpl<ReportLoading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportLoading &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ReportState.loading(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ReportLoadingCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory $ReportLoadingCopyWith(
          ReportLoading value, $Res Function(ReportLoading) _then) =
      _$ReportLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String?, List<TransactionWithCategoryName>> data});
}

/// @nodoc
class _$ReportLoadingCopyWithImpl<$Res>
    implements $ReportLoadingCopyWith<$Res> {
  _$ReportLoadingCopyWithImpl(this._self, this._then);

  final ReportLoading _self;
  final $Res Function(ReportLoading) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(ReportLoading(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String?, List<TransactionWithCategoryName>>,
    ));
  }
}

/// @nodoc

class ReportSuccess implements ReportState {
  const ReportSuccess(
      {required final Map<String?, List<TransactionWithCategoryName>> data})
      : _data = data;

  final Map<String?, List<TransactionWithCategoryName>> _data;
  @override
  Map<String?, List<TransactionWithCategoryName>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportSuccessCopyWith<ReportSuccess> get copyWith =>
      _$ReportSuccessCopyWithImpl<ReportSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ReportState.success(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ReportSuccessCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory $ReportSuccessCopyWith(
          ReportSuccess value, $Res Function(ReportSuccess) _then) =
      _$ReportSuccessCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String?, List<TransactionWithCategoryName>> data});
}

/// @nodoc
class _$ReportSuccessCopyWithImpl<$Res>
    implements $ReportSuccessCopyWith<$Res> {
  _$ReportSuccessCopyWithImpl(this._self, this._then);

  final ReportSuccess _self;
  final $Res Function(ReportSuccess) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(ReportSuccess(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String?, List<TransactionWithCategoryName>>,
    ));
  }
}

/// @nodoc

class ReportError implements ReportState {
  const ReportError(
      {required final Map<String?, List<TransactionWithCategoryName>> data})
      : _data = data;

  final Map<String?, List<TransactionWithCategoryName>> _data;
  @override
  Map<String?, List<TransactionWithCategoryName>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportErrorCopyWith<ReportError> get copyWith =>
      _$ReportErrorCopyWithImpl<ReportError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportError &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ReportState.error(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ReportErrorCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory $ReportErrorCopyWith(
          ReportError value, $Res Function(ReportError) _then) =
      _$ReportErrorCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String?, List<TransactionWithCategoryName>> data});
}

/// @nodoc
class _$ReportErrorCopyWithImpl<$Res> implements $ReportErrorCopyWith<$Res> {
  _$ReportErrorCopyWithImpl(this._self, this._then);

  final ReportError _self;
  final $Res Function(ReportError) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(ReportError(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String?, List<TransactionWithCategoryName>>,
    ));
  }
}

// dart format on
