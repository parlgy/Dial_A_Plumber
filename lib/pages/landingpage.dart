
import 'package:flutter/material.dart';
import 'pages.dart';


class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  static const String routeName = '/landing';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const LandingScreen(),
    );
  }
  @override
  State<LandingScreen> createState() => _LandingScreenState();

}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding8.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20
            ),
            Column(
              children: const [
                Text(
                  'Welcome To',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Dial a Plumber',
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OnboardingScreenOne()));
                },
                child: const LandingPageButtonFilled(
                  buttonName2: 'Get Started',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
