import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  static const String routeName = '/landing';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => LandingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(),
              Container(
                child: Column(
                  children: const [
                    Text('Welcome To'),
                    Text('Dial a Plumber'),
                  ],
                ),
              ),
              // Container( child: '')
            ],
          ),
        ),
      ),
    );
  }
}
