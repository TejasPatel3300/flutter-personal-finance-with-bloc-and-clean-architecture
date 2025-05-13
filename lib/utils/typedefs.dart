import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

import 'package:personal_finance_tracker/model/user_model.dart';

typedef EitherUserOrFailure = Either<Failure, UserDTO>;
