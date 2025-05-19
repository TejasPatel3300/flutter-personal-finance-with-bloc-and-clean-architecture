// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CategoryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CategoryEvent()';
  }
}

/// @nodoc

class CategoryStarted implements CategoryEvent {
  const CategoryStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CategoryStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CategoryEvent.started()';
  }
}

/// @nodoc

class CategoryAdded implements CategoryEvent {
  const CategoryAdded({required this.category});

  final Category category;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryAddedCopyWith<CategoryAdded> get copyWith =>
      _$CategoryAddedCopyWithImpl<CategoryAdded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryAdded &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @override
  String toString() {
    return 'CategoryEvent.added(category: $category)';
  }
}

/// @nodoc
abstract mixin class $CategoryAddedCopyWith<$Res> {
  factory $CategoryAddedCopyWith(
          CategoryAdded value, $Res Function(CategoryAdded) _then) =
      _$CategoryAddedCopyWithImpl;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class _$CategoryAddedCopyWithImpl<$Res>
    implements $CategoryAddedCopyWith<$Res> {
  _$CategoryAddedCopyWithImpl(this._self, this._then);

  final CategoryAdded _self;
  final $Res Function(CategoryAdded) _then;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
  }) {
    return _then(CategoryAdded(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class CategoryDeleted implements CategoryEvent {
  const CategoryDeleted({required this.category});

  final Category category;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryDeletedCopyWith<CategoryDeleted> get copyWith =>
      _$CategoryDeletedCopyWithImpl<CategoryDeleted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryDeleted &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @override
  String toString() {
    return 'CategoryEvent.deleted(category: $category)';
  }
}

/// @nodoc
abstract mixin class $CategoryDeletedCopyWith<$Res> {
  factory $CategoryDeletedCopyWith(
          CategoryDeleted value, $Res Function(CategoryDeleted) _then) =
      _$CategoryDeletedCopyWithImpl;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class _$CategoryDeletedCopyWithImpl<$Res>
    implements $CategoryDeletedCopyWith<$Res> {
  _$CategoryDeletedCopyWithImpl(this._self, this._then);

  final CategoryDeleted _self;
  final $Res Function(CategoryDeleted) _then;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
  }) {
    return _then(CategoryDeleted(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class CategoryUpdated implements CategoryEvent {
  const CategoryUpdated({required this.category});

  final Category category;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryUpdatedCopyWith<CategoryUpdated> get copyWith =>
      _$CategoryUpdatedCopyWithImpl<CategoryUpdated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryUpdated &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @override
  String toString() {
    return 'CategoryEvent.updated(category: $category)';
  }
}

/// @nodoc
abstract mixin class $CategoryUpdatedCopyWith<$Res> {
  factory $CategoryUpdatedCopyWith(
          CategoryUpdated value, $Res Function(CategoryUpdated) _then) =
      _$CategoryUpdatedCopyWithImpl;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class _$CategoryUpdatedCopyWithImpl<$Res>
    implements $CategoryUpdatedCopyWith<$Res> {
  _$CategoryUpdatedCopyWithImpl(this._self, this._then);

  final CategoryUpdated _self;
  final $Res Function(CategoryUpdated) _then;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
  }) {
    return _then(CategoryUpdated(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc
mixin _$CategoryState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CategoryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CategoryState()';
  }
}

/// @nodoc

class Initial implements CategoryState {
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
    return 'CategoryState.initial()';
  }
}

/// @nodoc

class CategoryLoading implements CategoryState {
  const CategoryLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CategoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CategoryState.loading()';
  }
}

/// @nodoc

class CategoryLoadSuccess implements CategoryState {
  const CategoryLoadSuccess(final List<Category> categories)
      : _categories = categories;

  final List<Category> _categories;
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryLoadSuccessCopyWith<CategoryLoadSuccess> get copyWith =>
      _$CategoryLoadSuccessCopyWithImpl<CategoryLoadSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'CategoryState.success(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $CategoryLoadSuccessCopyWith<$Res> {
  factory $CategoryLoadSuccessCopyWith(
          CategoryLoadSuccess value, $Res Function(CategoryLoadSuccess) _then) =
      _$CategoryLoadSuccessCopyWithImpl;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class _$CategoryLoadSuccessCopyWithImpl<$Res>
    implements $CategoryLoadSuccessCopyWith<$Res> {
  _$CategoryLoadSuccessCopyWithImpl(this._self, this._then);

  final CategoryLoadSuccess _self;
  final $Res Function(CategoryLoadSuccess) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(CategoryLoadSuccess(
      null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class CategoryLoadFailure implements CategoryState {
  const CategoryLoadFailure(this.failure);

  final Failure failure;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryLoadFailureCopyWith<CategoryLoadFailure> get copyWith =>
      _$CategoryLoadFailureCopyWithImpl<CategoryLoadFailure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryLoadFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'CategoryState.failure(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $CategoryLoadFailureCopyWith<$Res> {
  factory $CategoryLoadFailureCopyWith(
          CategoryLoadFailure value, $Res Function(CategoryLoadFailure) _then) =
      _$CategoryLoadFailureCopyWithImpl;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class _$CategoryLoadFailureCopyWithImpl<$Res>
    implements $CategoryLoadFailureCopyWith<$Res> {
  _$CategoryLoadFailureCopyWithImpl(this._self, this._then);

  final CategoryLoadFailure _self;
  final $Res Function(CategoryLoadFailure) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(CategoryLoadFailure(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

// dart format on
