import 'package:personal_finance_app/domain/models/budget.dart';
import 'package:personal_finance_app/domain/repositories/budget_repository.dart';
import 'package:personal_finance_app/utils/typedefs.dart';

class BudgetRepositoryImpl implements BudgetRepository{
  @override
  Future<EitherFailureOrBudget> getBudgetById({required String id}) {
    // TODO: implement getBudgetById
    throw UnimplementedError();
  }

  @override
  Future<EitherFailureOrBoolean> saveBudget({required Budget budget}) {
    // TODO: implement saveBudget
    throw UnimplementedError();
  }

  @override
  Future<EitherFailureOrBoolean> updateBudget({required Budget budget}) {
    // TODO: implement updateBudget
    throw UnimplementedError();
  }
}