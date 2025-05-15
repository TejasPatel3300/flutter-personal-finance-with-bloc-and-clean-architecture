import 'package:dartz/dartz.dart';
import 'package:personal_finance_tracker/data/db/dao/category_dao.dart';
import 'package:personal_finance_tracker/domain/category/entity/category.dart';
import 'package:personal_finance_tracker/domain/category/repository/category_repository.dart';
import 'package:personal_finance_tracker/model/category_model.dart';
import 'package:personal_finance_tracker/utils/failure.dart';
import 'package:sqflite/sqflite.dart';

class CategoryRepositoryImplSQLite implements CategoryRepository {
  final _categoryDao = CategoryDao();

  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    try {
      final response = await _categoryDao.getAllCategories();
      if (response.isEmpty) {
        throw Exception('No categories found!');
      }
      final categoriesDTOList = response.map((e) => CategoryDTO.fromMap(e)).toList();
      final categories = categoriesDTOList.map((categoryDTO) => categoryDTO.toEntity()).toList();
      return Right(categories);
    } on DatabaseException catch (e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Category>>> getAllCategoriesByType({required String type}) async {
    try {
      final response = await _categoryDao.getAllCategoriesByType(type);
      if (response.isEmpty) {
        throw Exception('No categories found!');
      }
      final categoriesDTOList = response.map((e) => CategoryDTO.fromMap(e)).toList();
      final categories = categoriesDTOList.map((categoryDTO) => categoryDTO.toEntity()).toList();
      return Right(categories);
    } on DatabaseException catch (e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
