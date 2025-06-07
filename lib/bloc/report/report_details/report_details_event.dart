part of 'report_details_bloc.dart';

@freezed
class ReportDetailsEvent with _$ReportDetailsEvent {
  const factory ReportDetailsEvent.started() = Started;
  const factory ReportDetailsEvent.fetch({required DateTime monthStartDate}) = ReportEventFetch;
  const factory ReportDetailsEvent.update({required List<TransactionWithCategoryName> updatedTransactions}) = ReportEventUpdate;
}
