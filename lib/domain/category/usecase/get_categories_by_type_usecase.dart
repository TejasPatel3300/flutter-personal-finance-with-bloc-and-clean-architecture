import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/common/usecase/usecase.dart';
import 'package:personal_finance_tracker/domain/category/entity/category.dart';
import 'package:personal_finance_tracker/domain/category/repository/category_repository.dart';
import 'package:personal_finance_tracker/utils/failure.dart';

class GetCategoriesByTypeUseCase implements UseCase<List<Category>, GetCategoriesByTypeParams>{
  final CategoryRepository categoryRepository;

  GetCategoriesByTypeUseCase({required this.categoryRepository});
  @override
  Future<Either<Failure, List<Category>>> call(GetCategoriesByTypeParams params) async {
    return await categoryRepository.getAllCategoriesByType(type: params.type);
  }
}

class GetCategoriesByTypeParams {
  final String type;

  GetCategoriesByTypeParams({required this.type});
}