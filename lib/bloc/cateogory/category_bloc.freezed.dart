// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) added,
    required TResult Function(Category category) deleted,
    required TResult Function(Category category) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? added,
    TResult? Function(Category category)? deleted,
    TResult? Function(Category category)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? added,
    TResult Function(Category category)? deleted,
    TResult Function(Category category)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStarted value) started,
    required TResult Function(CategoryAdded value) added,
    required TResult Function(CategoryDeleted value) deleted,
    required TResult Function(CategoryUpdated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStarted value)? started,
    TResult? Function(CategoryAdded value)? added,
    TResult? Function(CategoryDeleted value)? deleted,
    TResult? Function(CategoryUpdated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStarted value)? started,
    TResult Function(CategoryAdded value)? added,
    TResult Function(CategoryDeleted value)? deleted,
    TResult Function(CategoryUpdated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CategoryStartedImplCopyWith<$Res> {
  factory _$$CategoryStartedImplCopyWith(_$CategoryStartedImpl value,
          $Res Function(_$CategoryStartedImpl) then) =
      __$$CategoryStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryStartedImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryStartedImpl>
    implements _$$CategoryStartedImplCopyWith<$Res> {
  __$$CategoryStartedImplCopyWithImpl(
      _$CategoryStartedImpl _value, $Res Function(_$CategoryStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryStartedImpl implements CategoryStarted {
  const _$CategoryStartedImpl();

  @override
  String toString() {
    return 'CategoryEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) added,
    required TResult Function(Category category) deleted,
    required TResult Function(Category category) updated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? added,
    TResult? Function(Category category)? deleted,
    TResult? Function(Category category)? updated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? added,
    TResult Function(Category category)? deleted,
    TResult Function(Category category)? updated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStarted value) started,
    required TResult Function(CategoryAdded value) added,
    required TResult Function(CategoryDeleted value) deleted,
    required TResult Function(CategoryUpdated value) updated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStarted value)? started,
    TResult? Function(CategoryAdded value)? added,
    TResult? Function(CategoryDeleted value)? deleted,
    TResult? Function(CategoryUpdated value)? updated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStarted value)? started,
    TResult Function(CategoryAdded value)? added,
    TResult Function(CategoryDeleted value)? deleted,
    TResult Function(CategoryUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class CategoryStarted implements CategoryEvent {
  const factory CategoryStarted() = _$CategoryStartedImpl;
}

/// @nodoc
abstract class _$$CategoryAddedImplCopyWith<$Res> {
  factory _$$CategoryAddedImplCopyWith(
          _$CategoryAddedImpl value, $Res Function(_$CategoryAddedImpl) then) =
      __$$CategoryAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class __$$CategoryAddedImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryAddedImpl>
    implements _$$CategoryAddedImplCopyWith<$Res> {
  __$$CategoryAddedImplCopyWithImpl(
      _$CategoryAddedImpl _value, $Res Function(_$CategoryAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryAddedImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$CategoryAddedImpl implements CategoryAdded {
  const _$CategoryAddedImpl({required this.category});

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoryEvent.added(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAddedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAddedImplCopyWith<_$CategoryAddedImpl> get copyWith =>
      __$$CategoryAddedImplCopyWithImpl<_$CategoryAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) added,
    required TResult Function(Category category) deleted,
    required TResult Function(Category category) updated,
  }) {
    return added(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? added,
    TResult? Function(Category category)? deleted,
    TResult? Function(Category category)? updated,
  }) {
    return added?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? added,
    TResult Function(Category category)? deleted,
    TResult Function(Category category)? updated,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStarted value) started,
    required TResult Function(CategoryAdded value) added,
    required TResult Function(CategoryDeleted value) deleted,
    required TResult Function(CategoryUpdated value) updated,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStarted value)? started,
    TResult? Function(CategoryAdded value)? added,
    TResult? Function(CategoryDeleted value)? deleted,
    TResult? Function(CategoryUpdated value)? updated,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStarted value)? started,
    TResult Function(CategoryAdded value)? added,
    TResult Function(CategoryDeleted value)? deleted,
    TResult Function(CategoryUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class CategoryAdded implements CategoryEvent {
  const factory CategoryAdded({required final Category category}) =
      _$CategoryAddedImpl;

  Category get category;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryAddedImplCopyWith<_$CategoryAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryDeletedImplCopyWith<$Res> {
  factory _$$CategoryDeletedImplCopyWith(_$CategoryDeletedImpl value,
          $Res Function(_$CategoryDeletedImpl) then) =
      __$$CategoryDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class __$$CategoryDeletedImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryDeletedImpl>
    implements _$$CategoryDeletedImplCopyWith<$Res> {
  __$$CategoryDeletedImplCopyWithImpl(
      _$CategoryDeletedImpl _value, $Res Function(_$CategoryDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryDeletedImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$CategoryDeletedImpl implements CategoryDeleted {
  const _$CategoryDeletedImpl({required this.category});

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoryEvent.deleted(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeletedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDeletedImplCopyWith<_$CategoryDeletedImpl> get copyWith =>
      __$$CategoryDeletedImplCopyWithImpl<_$CategoryDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) added,
    required TResult Function(Category category) deleted,
    required TResult Function(Category category) updated,
  }) {
    return deleted(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? added,
    TResult? Function(Category category)? deleted,
    TResult? Function(Category category)? updated,
  }) {
    return deleted?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? added,
    TResult Function(Category category)? deleted,
    TResult Function(Category category)? updated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStarted value) started,
    required TResult Function(CategoryAdded value) added,
    required TResult Function(CategoryDeleted value) deleted,
    required TResult Function(CategoryUpdated value) updated,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStarted value)? started,
    TResult? Function(CategoryAdded value)? added,
    TResult? Function(CategoryDeleted value)? deleted,
    TResult? Function(CategoryUpdated value)? updated,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStarted value)? started,
    TResult Function(CategoryAdded value)? added,
    TResult Function(CategoryDeleted value)? deleted,
    TResult Function(CategoryUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class CategoryDeleted implements CategoryEvent {
  const factory CategoryDeleted({required final Category category}) =
      _$CategoryDeletedImpl;

  Category get category;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDeletedImplCopyWith<_$CategoryDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryUpdatedImplCopyWith<$Res> {
  factory _$$CategoryUpdatedImplCopyWith(_$CategoryUpdatedImpl value,
          $Res Function(_$CategoryUpdatedImpl) then) =
      __$$CategoryUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class __$$CategoryUpdatedImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryUpdatedImpl>
    implements _$$CategoryUpdatedImplCopyWith<$Res> {
  __$$CategoryUpdatedImplCopyWithImpl(
      _$CategoryUpdatedImpl _value, $Res Function(_$CategoryUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryUpdatedImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$CategoryUpdatedImpl implements CategoryUpdated {
  const _$CategoryUpdatedImpl({required this.category});

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoryEvent.updated(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdatedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryUpdatedImplCopyWith<_$CategoryUpdatedImpl> get copyWith =>
      __$$CategoryUpdatedImplCopyWithImpl<_$CategoryUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Category category) added,
    required TResult Function(Category category) deleted,
    required TResult Function(Category category) updated,
  }) {
    return updated(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Category category)? added,
    TResult? Function(Category category)? deleted,
    TResult? Function(Category category)? updated,
  }) {
    return updated?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Category category)? added,
    TResult Function(Category category)? deleted,
    TResult Function(Category category)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStarted value) started,
    required TResult Function(CategoryAdded value) added,
    required TResult Function(CategoryDeleted value) deleted,
    required TResult Function(CategoryUpdated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStarted value)? started,
    TResult? Function(CategoryAdded value)? added,
    TResult? Function(CategoryDeleted value)? deleted,
    TResult? Function(CategoryUpdated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStarted value)? started,
    TResult Function(CategoryAdded value)? added,
    TResult Function(CategoryDeleted value)? deleted,
    TResult Function(CategoryUpdated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class CategoryUpdated implements CategoryEvent {
  const factory CategoryUpdated({required final Category category}) =
      _$CategoryUpdatedImpl;

  Category get category;

  /// Create a copy of CategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryUpdatedImplCopyWith<_$CategoryUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoadSuccess value) success,
    required TResult Function(CategoryLoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoadSuccess value)? success,
    TResult? Function(CategoryLoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoadSuccess value)? success,
    TResult Function(CategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoadSuccess value) success,
    required TResult Function(CategoryLoadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoadSuccess value)? success,
    TResult? Function(CategoryLoadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoadSuccess value)? success,
    TResult Function(CategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CategoryState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoryLoadingImplCopyWith<$Res> {
  factory _$$CategoryLoadingImplCopyWith(_$CategoryLoadingImpl value,
          $Res Function(_$CategoryLoadingImpl) then) =
      __$$CategoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadingImpl>
    implements _$$CategoryLoadingImplCopyWith<$Res> {
  __$$CategoryLoadingImplCopyWithImpl(
      _$CategoryLoadingImpl _value, $Res Function(_$CategoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoryLoadingImpl implements CategoryLoading {
  const _$CategoryLoadingImpl();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoadSuccess value) success,
    required TResult Function(CategoryLoadFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoadSuccess value)? success,
    TResult? Function(CategoryLoadFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoadSuccess value)? success,
    TResult Function(CategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryLoading implements CategoryState {
  const factory CategoryLoading() = _$CategoryLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryLoadSuccessImplCopyWith<$Res> {
  factory _$$CategoryLoadSuccessImplCopyWith(_$CategoryLoadSuccessImpl value,
          $Res Function(_$CategoryLoadSuccessImpl) then) =
      __$$CategoryLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$CategoryLoadSuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadSuccessImpl>
    implements _$$CategoryLoadSuccessImplCopyWith<$Res> {
  __$$CategoryLoadSuccessImplCopyWithImpl(_$CategoryLoadSuccessImpl _value,
      $Res Function(_$CategoryLoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoryLoadSuccessImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoryLoadSuccessImpl implements CategoryLoadSuccess {
  const _$CategoryLoadSuccessImpl(final List<Category> categories)
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryState.success(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLoadSuccessImplCopyWith<_$CategoryLoadSuccessImpl> get copyWith =>
      __$$CategoryLoadSuccessImplCopyWithImpl<_$CategoryLoadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoadSuccess value) success,
    required TResult Function(CategoryLoadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoadSuccess value)? success,
    TResult? Function(CategoryLoadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoadSuccess value)? success,
    TResult Function(CategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadSuccess implements CategoryState {
  const factory CategoryLoadSuccess(final List<Category> categories) =
      _$CategoryLoadSuccessImpl;

  List<Category> get categories;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryLoadSuccessImplCopyWith<_$CategoryLoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryLoadFailureImplCopyWith<$Res> {
  factory _$$CategoryLoadFailureImplCopyWith(_$CategoryLoadFailureImpl value,
          $Res Function(_$CategoryLoadFailureImpl) then) =
      __$$CategoryLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CategoryLoadFailureImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadFailureImpl>
    implements _$$CategoryLoadFailureImplCopyWith<$Res> {
  __$$CategoryLoadFailureImplCopyWithImpl(_$CategoryLoadFailureImpl _value,
      $Res Function(_$CategoryLoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CategoryLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CategoryLoadFailureImpl implements CategoryLoadFailure {
  const _$CategoryLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CategoryState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLoadFailureImplCopyWith<_$CategoryLoadFailureImpl> get copyWith =>
      __$$CategoryLoadFailureImplCopyWithImpl<_$CategoryLoadFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(CategoryLoading value) loading,
    required TResult Function(CategoryLoadSuccess value) success,
    required TResult Function(CategoryLoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(CategoryLoading value)? loading,
    TResult? Function(CategoryLoadSuccess value)? success,
    TResult? Function(CategoryLoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(CategoryLoading value)? loading,
    TResult Function(CategoryLoadSuccess value)? success,
    TResult Function(CategoryLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadFailure implements CategoryState {
  const factory CategoryLoadFailure(final Failure failure) =
      _$CategoryLoadFailureImpl;

  Failure get failure;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryLoadFailureImplCopyWith<_$CategoryLoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
