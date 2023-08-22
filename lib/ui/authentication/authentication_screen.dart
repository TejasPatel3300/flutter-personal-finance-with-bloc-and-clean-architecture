import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_app/bloc/authentication/authentication_bloc.dart';
import 'package:personal_finance_app/ui/authentication/sign_in_tab.dart';
import 'package:personal_finance_app/ui/authentication/sign_up_tab.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => buildScreenBody(),
      ),
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        authenticated: (userId) {
          print('authentication state received');
          return null;
        },
      ),
    );
  }

  Scaffold buildScreenBody() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Sign In'),
            Tab(text: 'Sign Up'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SignInTab(),
          SignUpTab(),
        ],
      ),
    );
  }
}
