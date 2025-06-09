import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

import '../entity/category.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<Category>>> getAllCategories();

  Future<Either<Failure, List<Category>>> getAllCategoriesByType({required String type});
}
