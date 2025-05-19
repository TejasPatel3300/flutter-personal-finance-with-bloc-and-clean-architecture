part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.started() = CategoryStarted;
  const factory CategoryEvent.added({required Category category}) = CategoryAdded;
  const factory CategoryEvent.deleted({required Category category}) = CategoryDeleted;
  const factory CategoryEvent.updated({required Category category}) = CategoryUpdated;
}
