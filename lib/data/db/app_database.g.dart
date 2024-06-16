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

  CategoryDao? _categoryDaoInstance;

  ExpenseDao? _expenseDaoInstance;

  MasterCategoryDao? _masterCategoryDaoInstance;

  SubCategoryDao? _subCategoryDaoInstance;

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
            'CREATE TABLE IF NOT EXISTS `UserEntity` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `fullName` TEXT, `password` TEXT, `email` TEXT, `createdAt` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BudgetEntity` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `userId` INTEGER NOT NULL, `monthlyBudget` REAL NOT NULL, `necessitiesAllocation` REAL NOT NULL, `entertainmentAllocation` REAL NOT NULL, `investmentAllocation` REAL NOT NULL, `month` INTEGER NOT NULL, `year` INTEGER NOT NULL, `createdAt` TEXT, `updatedAt` TEXT, FOREIGN KEY (`userId`) REFERENCES `UserEntity` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CategoryEntity` (`catId` INTEGER PRIMARY KEY AUTOINCREMENT, `masterCatId` INTEGER NOT NULL, `name` TEXT NOT NULL, FOREIGN KEY (`masterCatId`) REFERENCES `MasterCategoryEntity` (`masterCatId`) ON UPDATE NO ACTION ON DELETE NO ACTION)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ExpenseEntity` (`expenseId` INTEGER PRIMARY KEY AUTOINCREMENT, `userId` INTEGER NOT NULL, `subCatId` INTEGER NOT NULL, `amount` REAL NOT NULL, `date` TEXT NOT NULL, `description` TEXT NOT NULL, `paymentMethod` TEXT NOT NULL, FOREIGN KEY (`userId`) REFERENCES `UserEntity` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION, FOREIGN KEY (`subCatId`) REFERENCES `SubCategoryEntity` (`subCatId`) ON UPDATE NO ACTION ON DELETE NO ACTION)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `MasterCategoryEntity` (`masterCatId` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SubCategoryEntity` (`subCatId` INTEGER PRIMARY KEY AUTOINCREMENT, `catId` INTEGER NOT NULL, `name` TEXT NOT NULL, FOREIGN KEY (`catId`) REFERENCES `CategoryEntity` (`catId`) ON UPDATE NO ACTION ON DELETE NO ACTION)');
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

  @override
  CategoryDao get categoryDao {
    return _categoryDaoInstance ??= _$CategoryDao(database, changeListener);
  }

  @override
  ExpenseDao get expenseDao {
    return _expenseDaoInstance ??= _$ExpenseDao(database, changeListener);
  }

  @override
  MasterCategoryDao get masterCategoryDao {
    return _masterCategoryDaoInstance ??=
        _$MasterCategoryDao(database, changeListener);
  }

  @override
  SubCategoryDao get subCategoryDao {
    return _subCategoryDaoInstance ??=
        _$SubCategoryDao(database, changeListener);
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
                  'password': item.password,
                  'email': item.email,
                  'createdAt': item.createdAt
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
            fullName: row['fullName'] as String?,
            password: row['password'] as String?,
            email: row['email'] as String?,
            createdAt: row['createdAt'] as String?),
        queryableName: 'UserEntity',
        isView: false);
  }

  @override
  Future<UserEntity?> getLastAddedUser() async {
    return _queryAdapter.query('SELECT * FROM users ORDER BY id DESC LIMIT 1',
        mapper: (Map<String, Object?> row) => UserEntity(
            id: row['id'] as int?,
            fullName: row['fullName'] as String?,
            password: row['password'] as String?,
            email: row['email'] as String?,
            createdAt: row['createdAt'] as String?));
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
            fullName: row['fullName'] as String?,
            password: row['password'] as String?,
            email: row['email'] as String?,
            createdAt: row['createdAt'] as String?),
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
                  'userId': item.userId,
                  'monthlyBudget': item.monthlyBudget,
                  'necessitiesAllocation': item.necessitiesAllocation,
                  'entertainmentAllocation': item.entertainmentAllocation,
                  'investmentAllocation': item.investmentAllocation,
                  'month': item.month,
                  'year': item.year,
                  'createdAt': item.createdAt,
                  'updatedAt': item.updatedAt
                }),
        _budgetEntityUpdateAdapter = UpdateAdapter(
            database,
            'BudgetEntity',
            ['id'],
            (BudgetEntity item) => <String, Object?>{
                  'id': item.id,
                  'userId': item.userId,
                  'monthlyBudget': item.monthlyBudget,
                  'necessitiesAllocation': item.necessitiesAllocation,
                  'entertainmentAllocation': item.entertainmentAllocation,
                  'investmentAllocation': item.investmentAllocation,
                  'month': item.month,
                  'year': item.year,
                  'createdAt': item.createdAt,
                  'updatedAt': item.updatedAt
                }),
        _budgetEntityDeletionAdapter = DeletionAdapter(
            database,
            'BudgetEntity',
            ['id'],
            (BudgetEntity item) => <String, Object?>{
                  'id': item.id,
                  'userId': item.userId,
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

  final UpdateAdapter<BudgetEntity> _budgetEntityUpdateAdapter;

  final DeletionAdapter<BudgetEntity> _budgetEntityDeletionAdapter;

  @override
  Future<List<BudgetEntity>> findAllBudgets() async {
    return _queryAdapter.queryList('SELECT * FROM BudgetEntity',
        mapper: (Map<String, Object?> row) => BudgetEntity(
            id: row['id'] as int?,
            userId: row['userId'] as int,
            necessitiesAllocation: row['necessitiesAllocation'] as double,
            entertainmentAllocation: row['entertainmentAllocation'] as double,
            investmentAllocation: row['investmentAllocation'] as double,
            monthlyBudget: row['monthlyBudget'] as double,
            month: row['month'] as int,
            year: row['year'] as int,
            createdAt: row['createdAt'] as String?,
            updatedAt: row['updatedAt'] as String?));
  }

  @override
  Future<BudgetEntity?> findBudgetById(int id) async {
    return _queryAdapter.query('SELECT * FROM BudgetEntity WHERE id = ?1',
        mapper: (Map<String, Object?> row) => BudgetEntity(
            id: row['id'] as int?,
            userId: row['userId'] as int,
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
  Future<BudgetEntity?> findBudgetByMonthAndYear(
    int month,
    int year,
    int userId,
  ) async {
    return _queryAdapter.query(
        'SELECT * FROM BudgetEntity WHERE month = ?1 AND year = ?2 AND userId = ?3',
        mapper: (Map<String, Object?> row) => BudgetEntity(id: row['id'] as int?, userId: row['userId'] as int, necessitiesAllocation: row['necessitiesAllocation'] as double, entertainmentAllocation: row['entertainmentAllocation'] as double, investmentAllocation: row['investmentAllocation'] as double, monthlyBudget: row['monthlyBudget'] as double, month: row['month'] as int, year: row['year'] as int, createdAt: row['createdAt'] as String?, updatedAt: row['updatedAt'] as String?),
        arguments: [month, year, userId]);
  }

  @override
  Future<void> insertBudget(BudgetEntity budget) async {
    await _budgetEntityInsertionAdapter.insert(
        budget, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateBudget(BudgetEntity budget) async {
    await _budgetEntityUpdateAdapter.update(budget, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteBudget(BudgetEntity budget) async {
    await _budgetEntityDeletionAdapter.delete(budget);
  }
}

class _$CategoryDao extends CategoryDao {
  _$CategoryDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _categoryEntityInsertionAdapter = InsertionAdapter(
            database,
            'CategoryEntity',
            (CategoryEntity item) => <String, Object?>{
                  'catId': item.catId,
                  'masterCatId': item.masterCatId,
                  'name': item.name
                }),
        _categoryEntityUpdateAdapter = UpdateAdapter(
            database,
            'CategoryEntity',
            ['catId'],
            (CategoryEntity item) => <String, Object?>{
                  'catId': item.catId,
                  'masterCatId': item.masterCatId,
                  'name': item.name
                }),
        _categoryEntityDeletionAdapter = DeletionAdapter(
            database,
            'CategoryEntity',
            ['catId'],
            (CategoryEntity item) => <String, Object?>{
                  'catId': item.catId,
                  'masterCatId': item.masterCatId,
                  'name': item.name
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CategoryEntity> _categoryEntityInsertionAdapter;

  final UpdateAdapter<CategoryEntity> _categoryEntityUpdateAdapter;

  final DeletionAdapter<CategoryEntity> _categoryEntityDeletionAdapter;

  @override
  Future<List<CategoryEntity>> findAllCategories() async {
    return _queryAdapter.queryList('SELECT * FROM CategoryEntity',
        mapper: (Map<String, Object?> row) => CategoryEntity(
            catId: row['catId'] as int?,
            masterCatId: row['masterCatId'] as int,
            name: row['name'] as String));
  }

  @override
  Future<CategoryEntity?> findCategoryById(int id) async {
    return _queryAdapter.query('SELECT * FROM CategoryEntity WHERE catId = ?1',
        mapper: (Map<String, Object?> row) => CategoryEntity(
            catId: row['catId'] as int?,
            masterCatId: row['masterCatId'] as int,
            name: row['name'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insertCategory(CategoryEntity category) async {
    await _categoryEntityInsertionAdapter.insert(
        category, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateCategory(CategoryEntity category) async {
    await _categoryEntityUpdateAdapter.update(
        category, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteCategory(CategoryEntity category) async {
    await _categoryEntityDeletionAdapter.delete(category);
  }
}

class _$ExpenseDao extends ExpenseDao {
  _$ExpenseDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _expenseEntityInsertionAdapter = InsertionAdapter(
            database,
            'ExpenseEntity',
            (ExpenseEntity item) => <String, Object?>{
                  'expenseId': item.expenseId,
                  'userId': item.userId,
                  'subCatId': item.subCatId,
                  'amount': item.amount,
                  'date': item.date,
                  'description': item.description,
                  'paymentMethod': item.paymentMethod
                }),
        _expenseEntityUpdateAdapter = UpdateAdapter(
            database,
            'ExpenseEntity',
            ['expenseId'],
            (ExpenseEntity item) => <String, Object?>{
                  'expenseId': item.expenseId,
                  'userId': item.userId,
                  'subCatId': item.subCatId,
                  'amount': item.amount,
                  'date': item.date,
                  'description': item.description,
                  'paymentMethod': item.paymentMethod
                }),
        _expenseEntityDeletionAdapter = DeletionAdapter(
            database,
            'ExpenseEntity',
            ['expenseId'],
            (ExpenseEntity item) => <String, Object?>{
                  'expenseId': item.expenseId,
                  'userId': item.userId,
                  'subCatId': item.subCatId,
                  'amount': item.amount,
                  'date': item.date,
                  'description': item.description,
                  'paymentMethod': item.paymentMethod
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ExpenseEntity> _expenseEntityInsertionAdapter;

  final UpdateAdapter<ExpenseEntity> _expenseEntityUpdateAdapter;

  final DeletionAdapter<ExpenseEntity> _expenseEntityDeletionAdapter;

  @override
  Future<List<ExpenseEntity>> findAllExpenses() async {
    return _queryAdapter.queryList('SELECT * FROM ExpenseEntity',
        mapper: (Map<String, Object?> row) => ExpenseEntity(
            expenseId: row['expenseId'] as int?,
            userId: row['userId'] as int,
            subCatId: row['subCatId'] as int,
            amount: row['amount'] as double,
            date: row['date'] as String,
            description: row['description'] as String,
            paymentMethod: row['paymentMethod'] as String));
  }

  @override
  Future<ExpenseEntity?> findExpenseById(int id) async {
    return _queryAdapter.query(
        'SELECT * FROM ExpenseEntity WHERE expenseId = ?1',
        mapper: (Map<String, Object?> row) => ExpenseEntity(
            expenseId: row['expenseId'] as int?,
            userId: row['userId'] as int,
            subCatId: row['subCatId'] as int,
            amount: row['amount'] as double,
            date: row['date'] as String,
            description: row['description'] as String,
            paymentMethod: row['paymentMethod'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insertExpense(ExpenseEntity expense) async {
    await _expenseEntityInsertionAdapter.insert(
        expense, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateExpense(ExpenseEntity expense) async {
    await _expenseEntityUpdateAdapter.update(expense, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteExpense(ExpenseEntity expense) async {
    await _expenseEntityDeletionAdapter.delete(expense);
  }
}

class _$MasterCategoryDao extends MasterCategoryDao {
  _$MasterCategoryDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _masterCategoryEntityInsertionAdapter = InsertionAdapter(
            database,
            'MasterCategoryEntity',
            (MasterCategoryEntity item) => <String, Object?>{
                  'masterCatId': item.masterCatId,
                  'name': item.name
                }),
        _masterCategoryEntityUpdateAdapter = UpdateAdapter(
            database,
            'MasterCategoryEntity',
            ['masterCatId'],
            (MasterCategoryEntity item) => <String, Object?>{
                  'masterCatId': item.masterCatId,
                  'name': item.name
                }),
        _masterCategoryEntityDeletionAdapter = DeletionAdapter(
            database,
            'MasterCategoryEntity',
            ['masterCatId'],
            (MasterCategoryEntity item) => <String, Object?>{
                  'masterCatId': item.masterCatId,
                  'name': item.name
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MasterCategoryEntity>
      _masterCategoryEntityInsertionAdapter;

  final UpdateAdapter<MasterCategoryEntity> _masterCategoryEntityUpdateAdapter;

  final DeletionAdapter<MasterCategoryEntity>
      _masterCategoryEntityDeletionAdapter;

  @override
  Future<List<MasterCategoryEntity>> findAllMasterCategories() async {
    return _queryAdapter.queryList('SELECT * FROM MasterCategoryEntity',
        mapper: (Map<String, Object?> row) => MasterCategoryEntity(
            masterCatId: row['masterCatId'] as int?,
            name: row['name'] as String));
  }

  @override
  Future<MasterCategoryEntity?> findMasterCategoryById(int id) async {
    return _queryAdapter.query(
        'SELECT * FROM MasterCategoryEntity WHERE masterCatId = ?1',
        mapper: (Map<String, Object?> row) => MasterCategoryEntity(
            masterCatId: row['masterCatId'] as int?,
            name: row['name'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insertMasterCategory(MasterCategoryEntity masterCategory) async {
    await _masterCategoryEntityInsertionAdapter.insert(
        masterCategory, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateMasterCategory(MasterCategoryEntity masterCategory) async {
    await _masterCategoryEntityUpdateAdapter.update(
        masterCategory, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteMasterCategory(MasterCategoryEntity masterCategory) async {
    await _masterCategoryEntityDeletionAdapter.delete(masterCategory);
  }
}

class _$SubCategoryDao extends SubCategoryDao {
  _$SubCategoryDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _subCategoryEntityInsertionAdapter = InsertionAdapter(
            database,
            'SubCategoryEntity',
            (SubCategoryEntity item) => <String, Object?>{
                  'subCatId': item.subCatId,
                  'catId': item.catId,
                  'name': item.name
                }),
        _subCategoryEntityUpdateAdapter = UpdateAdapter(
            database,
            'SubCategoryEntity',
            ['subCatId'],
            (SubCategoryEntity item) => <String, Object?>{
                  'subCatId': item.subCatId,
                  'catId': item.catId,
                  'name': item.name
                }),
        _subCategoryEntityDeletionAdapter = DeletionAdapter(
            database,
            'SubCategoryEntity',
            ['subCatId'],
            (SubCategoryEntity item) => <String, Object?>{
                  'subCatId': item.subCatId,
                  'catId': item.catId,
                  'name': item.name
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SubCategoryEntity> _subCategoryEntityInsertionAdapter;

  final UpdateAdapter<SubCategoryEntity> _subCategoryEntityUpdateAdapter;

  final DeletionAdapter<SubCategoryEntity> _subCategoryEntityDeletionAdapter;

  @override
  Future<List<SubCategoryEntity>> findAllSubCategories() async {
    return _queryAdapter.queryList('SELECT * FROM SubCategoryEntity',
        mapper: (Map<String, Object?> row) => SubCategoryEntity(
            subCatId: row['subCatId'] as int?,
            catId: row['catId'] as int,
            name: row['name'] as String));
  }

  @override
  Future<SubCategoryEntity?> findSubCategoryById(int id) async {
    return _queryAdapter.query(
        'SELECT * FROM SubCategoryEntity WHERE subCatId = ?1',
        mapper: (Map<String, Object?> row) => SubCategoryEntity(
            subCatId: row['subCatId'] as int?,
            catId: row['catId'] as int,
            name: row['name'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insertSubCategory(SubCategoryEntity subCategory) async {
    await _subCategoryEntityInsertionAdapter.insert(
        subCategory, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateSubCategory(SubCategoryEntity subCategory) async {
    await _subCategoryEntityUpdateAdapter.update(
        subCategory, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteSubCategory(SubCategoryEntity subCategory) async {
    await _subCategoryEntityDeletionAdapter.delete(subCategory);
  }
}
