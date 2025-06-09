part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = Initial;
  const factory CategoryState.loading() = CategoryLoading;
  const factory CategoryState.success(List<Category> categories) = CategoryLoadSuccess;
  const factory CategoryState.failure(Failure failure) = CategoryLoadFailure;
}
