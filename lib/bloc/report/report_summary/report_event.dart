part of 'report_bloc.dart';

@freezed
abstract class ReportEvent with _$ReportEvent {
  const factory ReportEvent.started() = Started;
  const factory ReportEvent.fetch() = ReportEventFetch;
  const factory ReportEvent.update({required List<TransactionWithCategoryName> updatedTransactions}) = ReportEventUpdate;
}
