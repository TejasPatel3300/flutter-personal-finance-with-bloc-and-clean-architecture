part of 'budget_planning_bloc.dart';

@freezed
class BudgetPlanningEvent with _$BudgetPlanningEvent {
  const factory BudgetPlanningEvent.started() = _Started;
}