part of 'report_details_bloc.dart';

@freezed
abstract class ReportDetailsState with _$ReportDetailsState {
  const factory ReportDetailsState.initial({required MonthlyReport report}) = ReportDetailsInitial;
  const factory ReportDetailsState.loading({required MonthlyReport report}) = ReportDetailsLoading;
  const factory ReportDetailsState.success({required MonthlyReport report}) = ReportDetailsSuccess;
  const factory ReportDetailsState.error({required MonthlyReport report}) = ReportDetailsError;
}
