part of 'search_and_filter_bloc.dart';

@Freezed()
abstract class SearchAndFilterState with _$SearchAndFilterState {
  const factory SearchAndFilterState.initial(List<TransactionWithCategoryName> currentTransactionsList) = SearchAndFilterInitial;
  const factory SearchAndFilterState.loading(List<TransactionWithCategoryName> currentTransactionsList) = SearchAndFilterLoading;
  const factory SearchAndFilterState.failure(Failure failure, List<TransactionWithCategoryName> currentTransactionsList) = SearchAndFilterFailure;
  const factory SearchAndFilterState.success(List<TransactionWithCategoryName> currentTransactionsList) = SearchAndFilterSuccess;
}
