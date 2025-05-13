import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}

class NoParams {}