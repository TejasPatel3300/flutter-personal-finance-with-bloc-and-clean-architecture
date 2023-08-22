import 'app_database.dart';

class DatabaseProvider {

  DatabaseProvider._();

  static final DatabaseProvider _instance = DatabaseProvider._();

  static DatabaseProvider get instance => _instance;

  static AppDatabase? _database;

  Future<AppDatabase> get dbInstance async {
    if (_database != null) return _database!;

    _database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    return _database!;
  }
  
}