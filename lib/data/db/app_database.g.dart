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

  BudgetDao? _budgetDaoInstance;

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
            'CREATE TABLE IF NOT EXISTS `BudgetEntity` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `monthlyBudget` REAL NOT NULL, `necessitiesAllocation` REAL NOT NULL, `entertainmentAllocation` REAL NOT NULL, `investmentAllocation` REAL NOT NULL, `month` INTEGER NOT NULL, `year` INTEGER NOT NULL, `createdAt` TEXT, `updatedAt` TEXT)');
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
  BudgetDao get budgetDao {
    return _budgetDaoInstance ??= _$BudgetDao(database, changeListener);
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
  Future<UserEntity?> getLastAddedUser() async {
    return _queryAdapter.query('SELECT * FROM users ORDER BY id DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => UserEntity(
            id: row['id'] as int?,
            fullName: row['fullName'] as String,
            email: row['email'] as String,
            password: row['password'] as String));
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

class _$BudgetDao extends BudgetDao {
  _$BudgetDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _budgetEntityInsertionAdapter = InsertionAdapter(
            database,
            'BudgetEntity',
            (BudgetEntity item) => <String, Object?>{
                  'id': item.id,
                  'monthlyBudget': item.monthlyBudget,
                  'necessitiesAllocation': item.necessitiesAllocation,
                  'entertainmentAllocation': item.entertainmentAllocation,
                  'investmentAllocation': item.investmentAllocation,
                  'month': item.month,
                  'year': item.year,
                  'createdAt': item.createdAt,
                  'updatedAt': item.updatedAt
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BudgetEntity> _budgetEntityInsertionAdapter;

  @override
  Future<BudgetEntity?> getBudget(int id) async {
    return _queryAdapter.query('SELECT * FROM BudgetEntity WHERE id = ?1',
        mapper: (Map<String, Object?> row) => BudgetEntity(
            id: row['id'] as int?,
            necessitiesAllocation: row['necessitiesAllocation'] as double,
            entertainmentAllocation: row['entertainmentAllocation'] as double,
            investmentAllocation: row['investmentAllocation'] as double,
            monthlyBudget: row['monthlyBudget'] as double,
            month: row['month'] as int,
            year: row['year'] as int,
            createdAt: row['createdAt'] as String?,
            updatedAt: row['updatedAt'] as String?),
        arguments: [id]);
  }

  @override
  Future<void> insertBudget(BudgetEntity budget) async {
    await _budgetEntityInsertionAdapter.insert(
        budget, OnConflictStrategy.replace);
  }
}
