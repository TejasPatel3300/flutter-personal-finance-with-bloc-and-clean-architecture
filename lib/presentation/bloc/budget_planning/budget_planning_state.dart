part of 'budget_planning_bloc.dart';

@freezed
class BudgetPlanningState with _$BudgetPlanningState {
  const factory BudgetPlanningState.initial() = _Initial;
  const factory BudgetPlanningState.loading() = _Loading;
}
