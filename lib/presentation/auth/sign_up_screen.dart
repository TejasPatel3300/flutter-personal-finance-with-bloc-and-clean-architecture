import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/authentication_bloc.dart';
import 'package:personal_finance_tracker/model/user_model.dart';
import 'package:personal_finance_tracker/presentation/auth/sign_in_screen.dart';
import 'package:personal_finance_tracker/presentation/widgets/custom_button.dart';
import 'package:personal_finance_tracker/utils/validators.dart';

import '../../repository/auth_repository_impl_sqlite.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.all(16),
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Create an account',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Enter your information to create an account',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: nameController,
                  validator: validateUsername,
                  style: TextStyle(color: Colors.grey),

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: emailController,
                  validator: validateEmail,
                  style: TextStyle(color: Colors.grey),

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  style: TextStyle(color: Colors.grey),

                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validatePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: CustomButton(
                    text: 'Sign Up',
                    onPressed: _onPressedSignUp,
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  child: Text(
                    'Already have an account? Sign in',
                    style: TextStyle(color: Colors.cyan),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onPressedSignUp() {
    if (formKey.currentState?.validate() ?? false) {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      final name = nameController.text.trim();
      context.read<AuthenticationBloc>().add(
            AuthenticationEvent.userSignUpRequested(
              email: email,
              password: password,
              name: name,
            ),
          );
      formKey.currentState?.save();
    }
  }
}
