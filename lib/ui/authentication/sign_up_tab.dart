import 'package:flutter/material.dart';
import 'package:personal_finance_app/data/db/database_provider.dart';
import 'package:personal_finance_app/model/dto/entities/user_entity.dart';
import 'package:sqflite/sqflite.dart';

class SignUpTab extends StatefulWidget {
  const SignUpTab({Key? key}) : super(key: key);

  @override
  State<SignUpTab> createState() => _SignUpTabState();
}

class _SignUpTabState extends State<SignUpTab> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () async {
                  // TODO: Implement sign-up logic
                  final database = await DatabaseProvider.instance.dbInstance;
                  final dao = database.userDao;
                  final user = UserEntity(
                    email: _emailController.text.trim(),
                    fullName: _nameController.text.trim(),
                    password: _passwordController.text.trim(),
                  );
                  try {
                    await dao.insertUser(user);
                  } on DatabaseException catch (e) {
                    if (e.isUniqueConstraintError()) {
                      print('unique constraint error');
                      e.getResultCode();
                    }
                  }
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () async {},
                child: Text('Already have an account? Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getAllUser() async {
    final database = await DatabaseProvider.instance.dbInstance;
    final dao = database.userDao;
    dao.getAllUserAsStream().listen((event) {
      print('users: $event');
    });
  }
}
