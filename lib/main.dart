import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_app/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:personal_finance_app/presentation/bloc/budget_planning/budget_planning_bloc.dart';
import 'package:personal_finance_app/routes.dart';
import 'package:personal_finance_app/utils/shared_pref_helper.dart';
import 'package:personal_finance_app/utils/theme.dart';

Future<void> main() async {
  await SharedPreferencesHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthenticationBloc()),
        BlocProvider(create: (_) => BudgetPlanningBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: getLightTheme(),
        darkTheme: getDarkTheme(),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: AppRouter.splashScreen,
      ),
    );
  }
}
