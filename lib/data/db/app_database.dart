import 'dart:async';

import 'package:floor/floor.dart';
import 'package:personal_finance_app/data/db/dao/budget_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:personal_finance_app/data/db/dao/user_dao.dart';

import '../model/dto/entities/budget_entity.dart';
import '../model/dto/entities/user_entity.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [UserEntity, BudgetEntity])
abstract class AppDatabase extends FloorDatabase{
  UserDao get userDao;
  BudgetDao get budgetDao;
}