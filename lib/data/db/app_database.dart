import 'dart:async';

import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/db/dao/budget_dao.dart';
import 'package:personal_finance_app/data/db/dao/category_dao.dart';
import 'package:personal_finance_app/data/db/dao/expense_dao.dart';
import 'package:personal_finance_app/data/db/dao/master_category_dao.dart';
import 'package:personal_finance_app/data/db/dao/sub_category_dao.dart';
import 'package:personal_finance_app/data/model/dto/entities/category_entity.dart';
import 'package:personal_finance_app/data/model/dto/entities/expense_entity.dart';
import 'package:personal_finance_app/data/model/dto/entities/master_category_entity.dart';
import 'package:personal_finance_app/data/model/dto/entities/sub_category_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:personal_finance_app/data/db/dao/user_dao.dart';

import '../model/dto/entities/budget_entity.dart';
import '../model/dto/entities/user_entity.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [
  UserEntity,
  BudgetEntity,
  CategoryEntity,
  ExpenseEntity,
  MasterCategoryEntity,
  SubCategoryEntity,
])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;

  BudgetDao get budgetDao;

  CategoryDao get categoryDao;

  ExpenseDao get expenseDao;

  MasterCategoryDao get masterCategoryDao;

  SubCategoryDao get subCategoryDao;
}
