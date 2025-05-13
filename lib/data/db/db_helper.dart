import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  static const String tableUsers = 'users';
  static const String tableAccounts = 'accounts';
  static const String tableCategories = 'categories';
  static const String tableTransactions = 'transactions';
  static const String tableAttachments = 'attachments';
  static const String tableBudgets = 'budgets';
  static const String tableRecurringTransactions = 'recurring_transactions';
  static const String tableTags = 'tags';
  static const String tableTransactionTags = 'transaction_tags';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'finance_manager.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        user_id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        email TEXT UNIQUE,
        password TEXT NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        currency_code TEXT DEFAULT 'USD',
        theme_preference TEXT DEFAULT 'light',
        notification_enabled BOOLEAN DEFAULT true
      );
    ''');

    await db.execute('''
      CREATE TABLE accounts (
        account_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        name TEXT NOT NULL,
        type TEXT NOT NULL CHECK(type IN ('cash', 'bank', 'credit_card', 'savings', 'investment')),
        balance DECIMAL(12,2) DEFAULT 0.00,
        currency_code TEXT DEFAULT 'USD',
        is_active BOOLEAN DEFAULT true,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
      );
    ''');

    await db.execute('''
      CREATE TABLE categories (
        category_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        name TEXT NOT NULL,
        type TEXT NOT NULL CHECK(type IN ('income', 'expense')),
        color TEXT DEFAULT '#000000',
        icon TEXT,
        is_default BOOLEAN DEFAULT false,
        parent_category_id INTEGER,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
        FOREIGN KEY (parent_category_id) REFERENCES categories(category_id) ON DELETE SET NULL
      );
    ''');

    await db.execute('''
      CREATE TABLE transactions (
        transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        account_id INTEGER NOT NULL,
        category_id INTEGER,
        amount DECIMAL(12,2) NOT NULL,
        type TEXT NOT NULL CHECK(type IN ('income', 'expense', 'transfer')),
        description TEXT,
        date TIMESTAMP NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        is_recurring BOOLEAN DEFAULT false,
        recurring_id INTEGER,
        location TEXT,
        notes TEXT,
        FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
        FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
        FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET NULL
      );
    ''');

    await db.execute('''
      CREATE TABLE attachments (
        attachment_id INTEGER PRIMARY KEY AUTOINCREMENT,
        transaction_id INTEGER NOT NULL,
        file_path TEXT NOT NULL,
        file_type TEXT NOT NULL,
        file_size INTEGER NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id) ON DELETE CASCADE
      );
    ''');

    await db.execute('''
      CREATE TABLE budgets (
        budget_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        category_id INTEGER NOT NULL,
        amount DECIMAL(12,2) NOT NULL,
        period_type TEXT NOT NULL CHECK(period_type IN ('weekly', 'monthly', 'yearly')),
        start_date DATE NOT NULL,
        end_date DATE,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
        FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE CASCADE
      );
    ''');

    await db.execute('''
      CREATE TABLE recurring_transactions (
        recurring_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        account_id INTEGER NOT NULL,
        category_id INTEGER,
        amount DECIMAL(12,2) NOT NULL,
        type TEXT NOT NULL CHECK(type IN ('income', 'expense')),
        description TEXT NOT NULL,
        frequency TEXT NOT NULL CHECK(frequency IN ('daily', 'weekly', 'monthly', 'yearly')),
        start_date DATE NOT NULL,
        end_date DATE,
        last_generated_date DATE,
        is_active BOOLEAN DEFAULT true,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
        FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE,
        FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET NULL
      );
    ''');

    await db.execute('''
      CREATE TABLE tags (
        tag_id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        name TEXT NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
      );
    ''');

    await db.execute('''
      CREATE TABLE transaction_tags (
        transaction_id INTEGER NOT NULL,
        tag_id INTEGER NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (transaction_id, tag_id),
        FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id) ON DELETE CASCADE,
        FOREIGN KEY (tag_id) REFERENCES tags(tag_id) ON DELETE CASCADE
      );
    ''');

    // Create indexes
    await db.execute(
        'CREATE INDEX idx_transactions_user_date ON transactions(user_id, date);');
    await db.execute(
        'CREATE INDEX idx_transactions_account ON transactions(account_id);');
    await db.execute(
        'CREATE INDEX idx_transactions_category ON transactions(category_id);');
    await db.execute(
        'CREATE INDEX idx_budgets_user_category ON budgets(user_id, category_id);');
    await db
        .execute('CREATE INDEX idx_categories_user ON categories(user_id);');
    await db.execute(
        'CREATE INDEX idx_transactions_recurring ON transactions(recurring_id);');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    // Handle database upgrade if needed in future
    // Example: db.execute('ALTER TABLE users ADD COLUMN phone_number TEXT;');
  }

  Future<void> closeDatabase() async {
    final db = await database;
    await db.close();
    _database = null;
  }
}
