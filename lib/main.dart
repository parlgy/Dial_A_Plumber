import 'package:dial_a_plumber/pages/onboarding.dart/onboardingscreen_one.dart';
import 'package:flutter/material.dart';
import 'config/app_router.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dial A Plumber',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: OnboardingScreenOne.routeName,
      // home: const LandingScreen(),
    );
  }
}
