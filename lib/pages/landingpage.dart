import 'package:flutter/cupertino.dart';
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
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/onboarding3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
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
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                // onTap: () => ,

                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                // onTap: () => ,

                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      // color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue.shade900)),
                  child: const Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 20,
                        // color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
