import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());

}

String? finalEmail;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    getValidationData().whenComplete(() async{
      Timer(Duration(seconds: 2), () => Get.to(finalEmail == null ? LandingScreen() : DashboardScreen()));
    });
    super.initState();
  }


  Future getValidationData() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString('email');
    setState(() {
      finalEmail = obtainedEmail;
    });
    print(finalEmail);
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dial A Plumber',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // onGenerateRoute: AppRouter.onGenerateRoute,
      // initialRoute: LandingScreen.routeName,
      home:  LandingScreen(),
    );
  }
}
