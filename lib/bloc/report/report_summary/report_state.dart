part of 'report_bloc.dart';

@freezed
abstract class ReportState with _$ReportState {
  const factory ReportState.initial({required List<SpendingByCategory> data}) = ReportInitial;
  const factory ReportState.loading({required List<SpendingByCategory> data}) = ReportLoading;
  const factory ReportState.success({required List<SpendingByCategory> data}) = ReportSuccess;
  const factory ReportState.error({required List<SpendingByCategory> data}) = ReportError;
}
