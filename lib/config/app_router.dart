import 'package:dial_a_plumber/pages/onboarding/onboardingscreen_one.dart';
import 'package:dial_a_plumber/pages/pages.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is Route: ${settings.name}');
    switch (settings.name) {
      case '/':
        return LandingScreen.route();
      case LandingScreen.routeName:
        return LandingScreen.route();

      case SignupScreen.routeName:
        return SignupScreen.route();

      case SigninScreen.routeName:
        return SigninScreen.route();

      case OnboardingScreenOne.routeName:
        return OnboardingScreenOne.route();

      case OnboardingScreenTwo.routeName:
        return OnboardingScreenTwo.route();

      case OnboardingScreenThree.routeName:
        return OnboardingScreenThree.route();

      case UserInformation.routeName:
        return UserInformation.route();

      case DashboardScreen.routeName:
        return DashboardScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}
