import 'package:dartz/dartz.dart';
import 'package:personal_finance_app/domain/models/budget.dart';
import 'package:personal_finance_app/utils/failure.dart';

import '../domain/models/user.dart';

typedef EitherFailureOrUser = Either<Failure, User>;
typedef EitherFailureOrBudget = Either<Failure, Budget>;
typedef EitherFailureOrBoolean = Either<Failure, bool>;