// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDao? _userDaoInstance;

  BudgetLimitDao? _budgetLimitDaoInstance;

  BudgetCategoryDao? _budgetCategoryDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `UserEntity` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `fullName` TEXT NOT NULL, `email` TEXT NOT NULL, `password` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `budget` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `monthlyBudget` REAL NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `budget_limits` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `budget_id` INTEGER NOT NULL, `category_id` INTEGER NOT NULL, `limit` REAL NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `budget_categories` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `limit` REAL NOT NULL)');
        await database.execute(
            'CREATE UNIQUE INDEX `index_UserEntity_fullName_email` ON `UserEntity` (`fullName`, `email`)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
  }

  @override
  BudgetLimitDao get budgetLimitDao {
    return _budgetLimitDaoInstance ??=
        _$BudgetLimitDao(database, changeListener);
  }

  @override
  BudgetCategoryDao get budgetCategoryDao {
    return _budgetCategoryDaoInstance ??=
        _$BudgetCategoryDao(database, changeListener);
  }
}

class _$UserDao extends UserDao {
  _$UserDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _userEntityInsertionAdapter = InsertionAdapter(
            database,
            'UserEntity',
            (UserEntity item) => <String, Object?>{
                  'id': item.id,
                  'fullName': item.fullName,
                  'email': item.email,
                  'password': item.password
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserEntity> _userEntityInsertionAdapter;

  @override
  Stream<List<UserEntity>> getAllUserAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM UserEntity',
        mapper: (Map<String, Object?> row) => UserEntity(
            id: row['id'] as int?,
            fullName: row['fullName'] as String,
            email: row['email'] as String,
            password: row['password'] as String),
        queryableName: 'UserEntity',
        isView: false);
  }

  @override
  Future<UserEntity?> findUserByEmailAndPassword(
    String email,
    String password,
  ) async {
    return _queryAdapter.query(
        'SELECT * FROM UserEntity WHERE email = ?1 AND password = ?2',
        mapper: (Map<String, Object?> row) => UserEntity(
            id: row['id'] as int?,
            fullName: row['fullName'] as String,
            email: row['email'] as String,
            password: row['password'] as String),
        arguments: [email, password]);
  }

  @override
  Future<void> insertUser(UserEntity user) async {
    await _userEntityInsertionAdapter.insert(user, OnConflictStrategy.fail);
  }
}

class _$BudgetLimitDao extends BudgetLimitDao {
  _$BudgetLimitDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _budgetLimitEntityInsertionAdapter = InsertionAdapter(
            database,
            'budget_limits',
            (BudgetLimitEntity item) => <String, Object?>{
                  'id': item.id,
                  'budget_id': item.budgetId,
                  'category_id': item.categoryId,
                  'limit': item.limit
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BudgetLimitEntity> _budgetLimitEntityInsertionAdapter;

  @override
  Future<List<BudgetLimitEntity>> getBudgetLimitsByBudgetId(
      int budgetId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM budget_limits WHERE budget_id = ?1',
        mapper: (Map<String, Object?> row) => BudgetLimitEntity(
            id: row['id'] as int,
            budgetId: row['budget_id'] as int,
            categoryId: row['category_id'] as int,
            limit: row['limit'] as double),
        arguments: [budgetId]);
  }

  @override
  Future<void> insertBudgetLimit(BudgetLimitEntity budgetLimit) async {
    await _budgetLimitEntityInsertionAdapter.insert(
        budgetLimit, OnConflictStrategy.abort);
  }
}

class _$BudgetCategoryDao extends BudgetCategoryDao {
  _$BudgetCategoryDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _budgetCategoryEntityInsertionAdapter = InsertionAdapter(
            database,
            'budget_categories',
            (BudgetCategoryEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'limit': item.limit
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BudgetCategoryEntity>
      _budgetCategoryEntityInsertionAdapter;

  @override
  Future<List<BudgetCategoryEntity>> getAllCategories() async {
    return _queryAdapter.queryList('SELECT * FROM budget_categories',
        mapper: (Map<String, Object?> row) => BudgetCategoryEntity(
            row['id'] as int, row['name'] as String, row['limit'] as double));
  }

  @override
  Future<void> insertCategory(BudgetCategoryEntity category) async {
    await _budgetCategoryEntityInsertionAdapter.insert(
        category, OnConflictStrategy.abort);
  }
}
