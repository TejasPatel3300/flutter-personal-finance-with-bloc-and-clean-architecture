import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/data/model/user_model.dart';
import 'package:personal_finance_tracker/utils/failure.dart';


typedef EitherUserOrFailure = Either<Failure, UserDTO>;
