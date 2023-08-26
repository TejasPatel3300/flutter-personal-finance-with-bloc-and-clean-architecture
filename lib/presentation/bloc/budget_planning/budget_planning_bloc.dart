import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_planning_event.dart';
part 'budget_planning_state.dart';
part 'budget_planning_bloc.freezed.dart';

class BudgetPlanningBloc extends Bloc<BudgetPlanningEvent, BudgetPlanningState> {
  BudgetPlanningBloc() : super(const _Initial()) {
    on<BudgetPlanningEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
