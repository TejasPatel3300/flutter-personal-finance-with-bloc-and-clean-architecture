import 'package:flutter/material.dart';
import 'package:personal_finance_app/presentation/ui/authentication/authentication_screen.dart';
import 'package:personal_finance_app/presentation/ui/budget_planning/budget_planning_screen.dart';
import 'package:personal_finance_app/presentation/ui/splash/splash_screen.dart';

class AppRouter {
  AppRouter._();

  static const String splashScreen = '/splashScreen';
  static const String budgetPlanningScreen = '/budgetPlanningScreen';
  static const String authenticationScreen = '/authenticationScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case budgetPlanningScreen:
        return MaterialPageRoute(builder: (_) => BudgetPlanningScreen());
      case authenticationScreen:
       return MaterialPageRoute(builder: (_) => AuthenticationScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
