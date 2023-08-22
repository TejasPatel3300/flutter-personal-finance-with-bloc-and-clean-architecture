import 'dart:async';

import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/db/dao/budget_category_dao.dart';
import 'package:personal_finance_app/data/db/dao/budget_limit_dao.dart';
import 'package:personal_finance_app/model/dto/entities/budget_category_entity.dart';
import 'package:personal_finance_app/model/dto/entities/budget_entity.dart';
import 'package:personal_finance_app/model/dto/entities/budget_limit_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:personal_finance_app/data/db/dao/user_dao.dart';
import 'package:personal_finance_app/model/dto/entities/user_entity.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [UserEntity, BudgetEntity, BudgetLimitEntity, BudgetCategoryEntity])
abstract class AppDatabase extends FloorDatabase{
  UserDao get userDao;
  BudgetLimitDao get budgetLimitDao;
  BudgetCategoryDao get budgetCategoryDao;
  // BudgetLimitDao get budgetLimitDao;
}