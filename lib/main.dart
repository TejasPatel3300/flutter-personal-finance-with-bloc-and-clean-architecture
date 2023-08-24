import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance_app/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:personal_finance_app/presentation/ui/budget_planning/budget_planning_screen.dart';
import 'package:personal_finance_app/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthenticationBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: getLightTheme(),
        darkTheme: getDarkTheme(),
        home: const BudgetPlanningScreen(),
      ),
    );
  }
}
