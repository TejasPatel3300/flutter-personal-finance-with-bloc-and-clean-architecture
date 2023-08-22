import 'package:dartz/dartz.dart';
import 'package:personal_finance_app/utils/failure.dart';

import '../domain/models/user.dart';

typedef EitherUserOrFailure = Either<User, Failure>;