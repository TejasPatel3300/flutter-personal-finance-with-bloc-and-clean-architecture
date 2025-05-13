import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/authentication_bloc.dart';
import 'package:personal_finance_tracker/presentation/auth/sign_up_screen.dart';
import 'package:personal_finance_tracker/presentation/home/home_screen.dart';
import 'package:personal_finance_tracker/repository/auth_repository_impl_sqlite.dart';

import '../../utils/validators.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state) {
          case AuthenticationAuthenticated():
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => MyHomePage(),
              ),
              (route) => false,
            );
            return;
          case AuthenticationFailure(error: final error):
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error)));
          default:
            return;
          // state.userId;
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Form(
            key: formKey,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Column(
                        children: [
                          Text(
                            "Welcome back",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Enter your credentials to sign in",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text("Email"),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        hintText: "Enter your email",
                        counterStyle: TextStyle(height: 0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      validator: validateEmail,
                    ),
                    const SizedBox(height: 16),
                    const Text("Password"),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(color: Colors.grey),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      validator: validatePassword,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _onPressedSignIn,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        child: const Text("Sign In"),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        child: const Text.rich(
                          TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(
                                text: "Sign up",
                                style: TextStyle(color: Colors.cyan),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onPressedSignIn() {
    if (formKey.currentState?.validate() ?? false) {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      context.read<AuthenticationBloc>().add(AuthenticationEvent.userLoginRequested(email: email, password: password));
      formKey.currentState?.save();
    }
  }
}
