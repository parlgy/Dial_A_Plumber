// import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages.dart';

String? finalEmail;

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
void initState(){
  getValidationData().whenComplete(() async{
    Timer(Duration(seconds: 2), () => Get.to(finalEmail == null ? SigninScreen() : DashboardScreen()));
  });
  super.initState();
}

Future getValidationData() async {
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var obtainedEmal = sharedPreferences.getString('email');
  setState(() {
    finalEmail = obtainedEmal;
  });
  print(finalEmail);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: const LandingPageButtonFilled(
                  buttonName2: 'Sign up',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SigninScreen()));
                },
                child: const LandingPageButtons(
                  buttonName: 'Sign in',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
