import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  static const String routeName = '/onboardingScreenOne';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const OnboardingScreenOne(),
    );
  }

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  // borderRadius: Border.symmetric(horizontal: ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/onboarding2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Dial a Plumber',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: const Text(
                  'I haven\'t bailed on writing. Look, I\'m generating a random paragraph at this very moment in an attempt.',
                  textAlign: TextAlign.center,
                  style: TextStyle(),
                ),
              ),
              // Expanded(child: Container()),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: MediaQuery.of(context).size.height / 2,
                child: Row(
                  children: [
                    const Text(
                      'Skip',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    Row(
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
