part of 'report_bloc.dart';

@freezed
abstract class ReportState with _$ReportState {
  const factory ReportState.initial({required Map<String?, List<TransactionWithCategoryName>> data}) = ReportInitial;
  const factory ReportState.loading({required Map<String?, List<TransactionWithCategoryName>> data}) = ReportLoading;
  const factory ReportState.success({required Map<String?, List<TransactionWithCategoryName>> data}) = ReportSuccess;
  const factory ReportState.error({required Map<String?, List<TransactionWithCategoryName>> data}) = ReportError;
}
