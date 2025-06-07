import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_tracker/bloc/authentication/authentication_bloc.dart';
import 'package:personal_finance_tracker/bloc/cateogory/category_bloc.dart';
import 'package:personal_finance_tracker/bloc/transaction/transaction_bloc.dart';
import 'package:personal_finance_tracker/data/db/db_helper.dart';
import 'package:personal_finance_tracker/init_dependencies.dart';
import 'package:personal_finance_tracker/presentation/auth/sign_in_screen.dart';
import 'package:personal_finance_tracker/presentation/auth/sign_up_screen.dart';
import 'package:personal_finance_tracker/presentation/budget/budget.dart';
import 'package:personal_finance_tracker/presentation/dashboard/dashboard.dart';
import 'package:personal_finance_tracker/presentation/home/home_screen.dart';
import 'package:personal_finance_tracker/presentation/report/report_screen.dart';
import 'package:personal_finance_tracker/presentation/settings/settings.dart';
import 'package:personal_finance_tracker/utils/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => serviceLocator<AuthenticationBloc>()),
        BlocProvider(create: (context) => serviceLocator<TransactionBloc>()),
        BlocProvider(create: (context) => serviceLocator<CategoryBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appTheme,
        home: SignInScreen(),
      ),
    );
  }
}
