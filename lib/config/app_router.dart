import 'package:dial_a_plumber/pages/landingpage.dart';
import 'package:dial_a_plumber/pages/registration/signupscreen.dart';
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
