// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_and_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchAndFilterEvent implements DiagnosticableTreeMixin {
  String? get category;
  String? get type;
  String? get searchString;

  /// Create a copy of SearchAndFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAndFilterEventCopyWith<SearchAndFilterEvent> get copyWith =>
      _$SearchAndFilterEventCopyWithImpl<SearchAndFilterEvent>(
          this as SearchAndFilterEvent, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchAndFilterEvent'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('searchString', searchString));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAndFilterEvent &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, type, searchString);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAndFilterEvent(category: $category, type: $type, searchString: $searchString)';
  }
}

/// @nodoc
abstract mixin class $SearchAndFilterEventCopyWith<$Res> {
  factory $SearchAndFilterEventCopyWith(SearchAndFilterEvent value,
          $Res Function(SearchAndFilterEvent) _then) =
      _$SearchAndFilterEventCopyWithImpl;
  @useResult
  $Res call({String? category, String? type, String? searchString});
}

/// @nodoc
class _$SearchAndFilterEventCopyWithImpl<$Res>
    implements $SearchAndFilterEventCopyWith<$Res> {
  _$SearchAndFilterEventCopyWithImpl(this._self, this._then);

  final SearchAndFilterEvent _self;
  final $Res Function(SearchAndFilterEvent) _then;

  /// Create a copy of SearchAndFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? type = freezed,
    Object? searchString = freezed,
  }) {
    return _then(_self.copyWith(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      searchString: freezed == searchString
          ? _self.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class SearchAndFilterApplied
    with DiagnosticableTreeMixin
    implements SearchAndFilterEvent {
  const SearchAndFilterApplied({this.category, this.type, this.searchString});

  @override
  final String? category;
  @override
  final String? type;
  @override
  final String? searchString;

  /// Create a copy of SearchAndFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAndFilterAppliedCopyWith<SearchAndFilterApplied> get copyWith =>
      _$SearchAndFilterAppliedCopyWithImpl<SearchAndFilterApplied>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchAndFilterEvent.applied'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('searchString', searchString));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAndFilterApplied &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, type, searchString);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAndFilterEvent.applied(category: $category, type: $type, searchString: $searchString)';
  }
}

/// @nodoc
abstract mixin class $SearchAndFilterAppliedCopyWith<$Res>
    implements $SearchAndFilterEventCopyWith<$Res> {
  factory $SearchAndFilterAppliedCopyWith(SearchAndFilterApplied value,
          $Res Function(SearchAndFilterApplied) _then) =
      _$SearchAndFilterAppliedCopyWithImpl;
  @override
  @useResult
  $Res call({String? category, String? type, String? searchString});
}

/// @nodoc
class _$SearchAndFilterAppliedCopyWithImpl<$Res>
    implements $SearchAndFilterAppliedCopyWith<$Res> {
  _$SearchAndFilterAppliedCopyWithImpl(this._self, this._then);

  final SearchAndFilterApplied _self;
  final $Res Function(SearchAndFilterApplied) _then;

  /// Create a copy of SearchAndFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = freezed,
    Object? type = freezed,
    Object? searchString = freezed,
  }) {
    return _then(SearchAndFilterApplied(
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      searchString: freezed == searchString
          ? _self.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SearchAndFilterState implements DiagnosticableTreeMixin {
  List<TransactionWithCategoryName> get currentTransactionsList;

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAndFilterStateCopyWith<SearchAndFilterState> get copyWith =>
      _$SearchAndFilterStateCopyWithImpl<SearchAndFilterState>(
          this as SearchAndFilterState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchAndFilterState'))
      ..add(DiagnosticsProperty(
          'currentTransactionsList', currentTransactionsList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAndFilterState &&
            const DeepCollectionEquality().equals(
                other.currentTransactionsList, currentTransactionsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(currentTransactionsList));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAndFilterState(currentTransactionsList: $currentTransactionsList)';
  }
}

/// @nodoc
abstract mixin class $SearchAndFilterStateCopyWith<$Res> {
  factory $SearchAndFilterStateCopyWith(SearchAndFilterState value,
          $Res Function(SearchAndFilterState) _then) =
      _$SearchAndFilterStateCopyWithImpl;
  @useResult
  $Res call({List<TransactionWithCategoryName> currentTransactionsList});
}

/// @nodoc
class _$SearchAndFilterStateCopyWithImpl<$Res>
    implements $SearchAndFilterStateCopyWith<$Res> {
  _$SearchAndFilterStateCopyWithImpl(this._self, this._then);

  final SearchAndFilterState _self;
  final $Res Function(SearchAndFilterState) _then;

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTransactionsList = null,
  }) {
    return _then(_self.copyWith(
      currentTransactionsList: null == currentTransactionsList
          ? _self.currentTransactionsList
          : currentTransactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>,
    ));
  }
}

/// @nodoc

class SearchAndFilterInitial
    with DiagnosticableTreeMixin
    implements SearchAndFilterState {
  const SearchAndFilterInitial(
      final List<TransactionWithCategoryName> currentTransactionsList)
      : _currentTransactionsList = currentTransactionsList;

  final List<TransactionWithCategoryName> _currentTransactionsList;
  @override
  List<TransactionWithCategoryName> get currentTransactionsList {
    if (_currentTransactionsList is EqualUnmodifiableListView)
      return _currentTransactionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTransactionsList);
  }

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAndFilterInitialCopyWith<SearchAndFilterInitial> get copyWith =>
      _$SearchAndFilterInitialCopyWithImpl<SearchAndFilterInitial>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchAndFilterState.initial'))
      ..add(DiagnosticsProperty(
          'currentTransactionsList', currentTransactionsList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAndFilterInitial &&
            const DeepCollectionEquality().equals(
                other._currentTransactionsList, _currentTransactionsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_currentTransactionsList));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAndFilterState.initial(currentTransactionsList: $currentTransactionsList)';
  }
}

/// @nodoc
abstract mixin class $SearchAndFilterInitialCopyWith<$Res>
    implements $SearchAndFilterStateCopyWith<$Res> {
  factory $SearchAndFilterInitialCopyWith(SearchAndFilterInitial value,
          $Res Function(SearchAndFilterInitial) _then) =
      _$SearchAndFilterInitialCopyWithImpl;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName> currentTransactionsList});
}

/// @nodoc
class _$SearchAndFilterInitialCopyWithImpl<$Res>
    implements $SearchAndFilterInitialCopyWith<$Res> {
  _$SearchAndFilterInitialCopyWithImpl(this._self, this._then);

  final SearchAndFilterInitial _self;
  final $Res Function(SearchAndFilterInitial) _then;

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTransactionsList = null,
  }) {
    return _then(SearchAndFilterInitial(
      null == currentTransactionsList
          ? _self._currentTransactionsList
          : currentTransactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>,
    ));
  }
}

/// @nodoc

class SearchAndFilterLoading
    with DiagnosticableTreeMixin
    implements SearchAndFilterState {
  const SearchAndFilterLoading(
      final List<TransactionWithCategoryName> currentTransactionsList)
      : _currentTransactionsList = currentTransactionsList;

  final List<TransactionWithCategoryName> _currentTransactionsList;
  @override
  List<TransactionWithCategoryName> get currentTransactionsList {
    if (_currentTransactionsList is EqualUnmodifiableListView)
      return _currentTransactionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTransactionsList);
  }

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAndFilterLoadingCopyWith<SearchAndFilterLoading> get copyWith =>
      _$SearchAndFilterLoadingCopyWithImpl<SearchAndFilterLoading>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchAndFilterState.loading'))
      ..add(DiagnosticsProperty(
          'currentTransactionsList', currentTransactionsList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAndFilterLoading &&
            const DeepCollectionEquality().equals(
                other._currentTransactionsList, _currentTransactionsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_currentTransactionsList));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAndFilterState.loading(currentTransactionsList: $currentTransactionsList)';
  }
}

/// @nodoc
abstract mixin class $SearchAndFilterLoadingCopyWith<$Res>
    implements $SearchAndFilterStateCopyWith<$Res> {
  factory $SearchAndFilterLoadingCopyWith(SearchAndFilterLoading value,
          $Res Function(SearchAndFilterLoading) _then) =
      _$SearchAndFilterLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName> currentTransactionsList});
}

/// @nodoc
class _$SearchAndFilterLoadingCopyWithImpl<$Res>
    implements $SearchAndFilterLoadingCopyWith<$Res> {
  _$SearchAndFilterLoadingCopyWithImpl(this._self, this._then);

  final SearchAndFilterLoading _self;
  final $Res Function(SearchAndFilterLoading) _then;

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTransactionsList = null,
  }) {
    return _then(SearchAndFilterLoading(
      null == currentTransactionsList
          ? _self._currentTransactionsList
          : currentTransactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>,
    ));
  }
}

/// @nodoc

class SearchAndFilterFailure
    with DiagnosticableTreeMixin
    implements SearchAndFilterState {
  const SearchAndFilterFailure(this.failure,
      final List<TransactionWithCategoryName> currentTransactionsList)
      : _currentTransactionsList = currentTransactionsList;

  final Failure failure;
  final List<TransactionWithCategoryName> _currentTransactionsList;
  @override
  List<TransactionWithCategoryName> get currentTransactionsList {
    if (_currentTransactionsList is EqualUnmodifiableListView)
      return _currentTransactionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTransactionsList);
  }

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAndFilterFailureCopyWith<SearchAndFilterFailure> get copyWith =>
      _$SearchAndFilterFailureCopyWithImpl<SearchAndFilterFailure>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchAndFilterState.failure'))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty(
          'currentTransactionsList', currentTransactionsList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAndFilterFailure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(
                other._currentTransactionsList, _currentTransactionsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure,
      const DeepCollectionEquality().hash(_currentTransactionsList));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAndFilterState.failure(failure: $failure, currentTransactionsList: $currentTransactionsList)';
  }
}

/// @nodoc
abstract mixin class $SearchAndFilterFailureCopyWith<$Res>
    implements $SearchAndFilterStateCopyWith<$Res> {
  factory $SearchAndFilterFailureCopyWith(SearchAndFilterFailure value,
          $Res Function(SearchAndFilterFailure) _then) =
      _$SearchAndFilterFailureCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Failure failure,
      List<TransactionWithCategoryName> currentTransactionsList});
}

/// @nodoc
class _$SearchAndFilterFailureCopyWithImpl<$Res>
    implements $SearchAndFilterFailureCopyWith<$Res> {
  _$SearchAndFilterFailureCopyWithImpl(this._self, this._then);

  final SearchAndFilterFailure _self;
  final $Res Function(SearchAndFilterFailure) _then;

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
    Object? currentTransactionsList = null,
  }) {
    return _then(SearchAndFilterFailure(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      null == currentTransactionsList
          ? _self._currentTransactionsList
          : currentTransactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>,
    ));
  }
}

/// @nodoc

class SearchAndFilterSuccess
    with DiagnosticableTreeMixin
    implements SearchAndFilterState {
  const SearchAndFilterSuccess(
      final List<TransactionWithCategoryName> currentTransactionsList)
      : _currentTransactionsList = currentTransactionsList;

  final List<TransactionWithCategoryName> _currentTransactionsList;
  @override
  List<TransactionWithCategoryName> get currentTransactionsList {
    if (_currentTransactionsList is EqualUnmodifiableListView)
      return _currentTransactionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentTransactionsList);
  }

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchAndFilterSuccessCopyWith<SearchAndFilterSuccess> get copyWith =>
      _$SearchAndFilterSuccessCopyWithImpl<SearchAndFilterSuccess>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SearchAndFilterState.success'))
      ..add(DiagnosticsProperty(
          'currentTransactionsList', currentTransactionsList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchAndFilterSuccess &&
            const DeepCollectionEquality().equals(
                other._currentTransactionsList, _currentTransactionsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_currentTransactionsList));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAndFilterState.success(currentTransactionsList: $currentTransactionsList)';
  }
}

/// @nodoc
abstract mixin class $SearchAndFilterSuccessCopyWith<$Res>
    implements $SearchAndFilterStateCopyWith<$Res> {
  factory $SearchAndFilterSuccessCopyWith(SearchAndFilterSuccess value,
          $Res Function(SearchAndFilterSuccess) _then) =
      _$SearchAndFilterSuccessCopyWithImpl;
  @override
  @useResult
  $Res call({List<TransactionWithCategoryName> currentTransactionsList});
}

/// @nodoc
class _$SearchAndFilterSuccessCopyWithImpl<$Res>
    implements $SearchAndFilterSuccessCopyWith<$Res> {
  _$SearchAndFilterSuccessCopyWithImpl(this._self, this._then);

  final SearchAndFilterSuccess _self;
  final $Res Function(SearchAndFilterSuccess) _then;

  /// Create a copy of SearchAndFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTransactionsList = null,
  }) {
    return _then(SearchAndFilterSuccess(
      null == currentTransactionsList
          ? _self._currentTransactionsList
          : currentTransactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionWithCategoryName>,
    ));
  }
}

// dart format on
