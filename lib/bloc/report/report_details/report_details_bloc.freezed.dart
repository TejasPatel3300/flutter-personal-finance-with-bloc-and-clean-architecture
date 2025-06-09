// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportDetailsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportDetailsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportDetailsEvent()';
  }
}

/// @nodoc
class $ReportDetailsEventCopyWith<$Res> {
  $ReportDetailsEventCopyWith(
      ReportDetailsEvent _, $Res Function(ReportDetailsEvent) __);
}

/// @nodoc

class Started implements ReportDetailsEvent {
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
    return 'ReportDetailsEvent.started()';
  }
}

/// @nodoc

class ReportEventFetch implements ReportDetailsEvent {
  const ReportEventFetch({required this.monthStartDate});

  final DateTime monthStartDate;

  /// Create a copy of ReportDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportEventFetchCopyWith<ReportEventFetch> get copyWith =>
      _$ReportEventFetchCopyWithImpl<ReportEventFetch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportEventFetch &&
            (identical(other.monthStartDate, monthStartDate) ||
                other.monthStartDate == monthStartDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, monthStartDate);

  @override
  String toString() {
    return 'ReportDetailsEvent.fetch(monthStartDate: $monthStartDate)';
  }
}

/// @nodoc
abstract mixin class $ReportEventFetchCopyWith<$Res>
    implements $ReportDetailsEventCopyWith<$Res> {
  factory $ReportEventFetchCopyWith(
          ReportEventFetch value, $Res Function(ReportEventFetch) _then) =
      _$ReportEventFetchCopyWithImpl;
  @useResult
  $Res call({DateTime monthStartDate});
}

/// @nodoc
class _$ReportEventFetchCopyWithImpl<$Res>
    implements $ReportEventFetchCopyWith<$Res> {
  _$ReportEventFetchCopyWithImpl(this._self, this._then);

  final ReportEventFetch _self;
  final $Res Function(ReportEventFetch) _then;

  /// Create a copy of ReportDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? monthStartDate = null,
  }) {
    return _then(ReportEventFetch(
      monthStartDate: null == monthStartDate
          ? _self.monthStartDate
          : monthStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class ReportEventUpdate implements ReportDetailsEvent {
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

  /// Create a copy of ReportDetailsEvent
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
    return 'ReportDetailsEvent.update(updatedTransactions: $updatedTransactions)';
  }
}

/// @nodoc
abstract mixin class $ReportEventUpdateCopyWith<$Res>
    implements $ReportDetailsEventCopyWith<$Res> {
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

  /// Create a copy of ReportDetailsEvent
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
mixin _$ReportDetailsState {
  MonthlyReport get report;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDetailsStateCopyWith<ReportDetailsState> get copyWith =>
      _$ReportDetailsStateCopyWithImpl<ReportDetailsState>(
          this as ReportDetailsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDetailsState &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportDetailsState(report: $report)';
  }
}

/// @nodoc
abstract mixin class $ReportDetailsStateCopyWith<$Res> {
  factory $ReportDetailsStateCopyWith(
          ReportDetailsState value, $Res Function(ReportDetailsState) _then) =
      _$ReportDetailsStateCopyWithImpl;
  @useResult
  $Res call({MonthlyReport report});
}

/// @nodoc
class _$ReportDetailsStateCopyWithImpl<$Res>
    implements $ReportDetailsStateCopyWith<$Res> {
  _$ReportDetailsStateCopyWithImpl(this._self, this._then);

  final ReportDetailsState _self;
  final $Res Function(ReportDetailsState) _then;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = null,
  }) {
    return _then(_self.copyWith(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as MonthlyReport,
    ));
  }
}

/// @nodoc

class ReportDetailsInitial implements ReportDetailsState {
  const ReportDetailsInitial({required this.report});

  @override
  final MonthlyReport report;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDetailsInitialCopyWith<ReportDetailsInitial> get copyWith =>
      _$ReportDetailsInitialCopyWithImpl<ReportDetailsInitial>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDetailsInitial &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportDetailsState.initial(report: $report)';
  }
}

/// @nodoc
abstract mixin class $ReportDetailsInitialCopyWith<$Res>
    implements $ReportDetailsStateCopyWith<$Res> {
  factory $ReportDetailsInitialCopyWith(ReportDetailsInitial value,
          $Res Function(ReportDetailsInitial) _then) =
      _$ReportDetailsInitialCopyWithImpl;
  @override
  @useResult
  $Res call({MonthlyReport report});
}

/// @nodoc
class _$ReportDetailsInitialCopyWithImpl<$Res>
    implements $ReportDetailsInitialCopyWith<$Res> {
  _$ReportDetailsInitialCopyWithImpl(this._self, this._then);

  final ReportDetailsInitial _self;
  final $Res Function(ReportDetailsInitial) _then;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
  }) {
    return _then(ReportDetailsInitial(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as MonthlyReport,
    ));
  }
}

/// @nodoc

class ReportDetailsLoading implements ReportDetailsState {
  const ReportDetailsLoading({required this.report});

  @override
  final MonthlyReport report;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDetailsLoadingCopyWith<ReportDetailsLoading> get copyWith =>
      _$ReportDetailsLoadingCopyWithImpl<ReportDetailsLoading>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDetailsLoading &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportDetailsState.loading(report: $report)';
  }
}

/// @nodoc
abstract mixin class $ReportDetailsLoadingCopyWith<$Res>
    implements $ReportDetailsStateCopyWith<$Res> {
  factory $ReportDetailsLoadingCopyWith(ReportDetailsLoading value,
          $Res Function(ReportDetailsLoading) _then) =
      _$ReportDetailsLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({MonthlyReport report});
}

/// @nodoc
class _$ReportDetailsLoadingCopyWithImpl<$Res>
    implements $ReportDetailsLoadingCopyWith<$Res> {
  _$ReportDetailsLoadingCopyWithImpl(this._self, this._then);

  final ReportDetailsLoading _self;
  final $Res Function(ReportDetailsLoading) _then;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
  }) {
    return _then(ReportDetailsLoading(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as MonthlyReport,
    ));
  }
}

/// @nodoc

class ReportDetailsSuccess implements ReportDetailsState {
  const ReportDetailsSuccess({required this.report});

  @override
  final MonthlyReport report;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDetailsSuccessCopyWith<ReportDetailsSuccess> get copyWith =>
      _$ReportDetailsSuccessCopyWithImpl<ReportDetailsSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDetailsSuccess &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportDetailsState.success(report: $report)';
  }
}

/// @nodoc
abstract mixin class $ReportDetailsSuccessCopyWith<$Res>
    implements $ReportDetailsStateCopyWith<$Res> {
  factory $ReportDetailsSuccessCopyWith(ReportDetailsSuccess value,
          $Res Function(ReportDetailsSuccess) _then) =
      _$ReportDetailsSuccessCopyWithImpl;
  @override
  @useResult
  $Res call({MonthlyReport report});
}

/// @nodoc
class _$ReportDetailsSuccessCopyWithImpl<$Res>
    implements $ReportDetailsSuccessCopyWith<$Res> {
  _$ReportDetailsSuccessCopyWithImpl(this._self, this._then);

  final ReportDetailsSuccess _self;
  final $Res Function(ReportDetailsSuccess) _then;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
  }) {
    return _then(ReportDetailsSuccess(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as MonthlyReport,
    ));
  }
}

/// @nodoc

class ReportDetailsError implements ReportDetailsState {
  const ReportDetailsError({required this.report});

  @override
  final MonthlyReport report;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDetailsErrorCopyWith<ReportDetailsError> get copyWith =>
      _$ReportDetailsErrorCopyWithImpl<ReportDetailsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDetailsError &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportDetailsState.error(report: $report)';
  }
}

/// @nodoc
abstract mixin class $ReportDetailsErrorCopyWith<$Res>
    implements $ReportDetailsStateCopyWith<$Res> {
  factory $ReportDetailsErrorCopyWith(
          ReportDetailsError value, $Res Function(ReportDetailsError) _then) =
      _$ReportDetailsErrorCopyWithImpl;
  @override
  @useResult
  $Res call({MonthlyReport report});
}

/// @nodoc
class _$ReportDetailsErrorCopyWithImpl<$Res>
    implements $ReportDetailsErrorCopyWith<$Res> {
  _$ReportDetailsErrorCopyWithImpl(this._self, this._then);

  final ReportDetailsError _self;
  final $Res Function(ReportDetailsError) _then;

  /// Create a copy of ReportDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
  }) {
    return _then(ReportDetailsError(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as MonthlyReport,
    ));
  }
}

// dart format on
