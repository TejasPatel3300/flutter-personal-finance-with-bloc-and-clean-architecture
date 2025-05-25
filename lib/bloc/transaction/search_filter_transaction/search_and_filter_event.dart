part of 'search_and_filter_bloc.dart';

@Freezed()
abstract class SearchAndFilterEvent with _$SearchAndFilterEvent {
  const factory SearchAndFilterEvent.applied({String? category, String? type, String? searchString}) = SearchAndFilterApplied;
}
