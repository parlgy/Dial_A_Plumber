import 'dart:async';

import 'package:dial_a_plumber/pages/profile/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

import '../pages.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static const String routeName = '/dashboardScreen';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const DashboardScreen(),
    );
  }

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Future<void> _makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: "0759000575",
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leadingWidth: 200,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        leading: Container(
          height: 40,
          margin: const EdgeInsets.only(left: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo3.png'),
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(),
                ),
              );
            },
            child: Container(
              // margin: const EdgeInsets.only(right: 20),
              // child: const Icon(
              //   Icons.settings,
              //   size: 30,
              //   color: Colors.black,
              // ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/map.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 30, right: 30, top: 70, bottom: 70),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Get a',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Plumber',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Click the button below.',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      elevation: 5,
                      onPressed: () {
                        _makePhoneCall();
                      },
                      child: Container(
                        // padding: const EdgeInsets.all(20),
                        // decoration: BoxDecoration(
                        //   color: Colors.blue[900],
                        //   borderRadius: BorderRadius.circular(50),
                        // ),
                        // child: const Icon(
                        //   Icons.phone,
                        //   size: 50,
                        //   color: Colors.white,
                        // ),
                        child: Lottie.asset('assets/lotti/three.json', height: 200, reverse: true, repeat: true, fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }
}
