
import 'package:personal_finance_app/domain/models/budget.dart';
import 'package:personal_finance_app/utils/typedefs.dart';

abstract class BudgetRepository{

  Future<EitherFailureOrBudget> getBudgetById({required String id});
  Future<EitherFailureOrBoolean> saveBudget({required Budget budget});
  Future<EitherFailureOrBoolean> updateBudget({required Budget budget});
}