import 'dart:async';

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
      path: "+254721953738",
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 200,
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        leading: Container(
          height: 70,
          margin: const EdgeInsets.only(left: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo3.png'),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left:20.0, right: 20.0, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Column(
                          children: const [
                            Text(
                              'Do you need',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'A Plumber ?',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      // Lottie.asset('assets/lotti/one.json', height: 130,repeat: true),
                    ],
                  ),
                  const SizedBox(
                      height: 10
                  ),
                  Container(
                    child: const Text('Dial a plumber is an '
                        'initiative by SELD NETWORK KENYA that gives preference to promoting female artisans in the field of plumbing.',
                    style: TextStyle(
                      fontSize: 20
                    ),
                    ),
                  ),
                  const SizedBox(
                      height: 20
                  ),
                  // Row(
                  //   children: const[
                  //   //   Text(
                  //   //       'Read More',
                  //   //   style: TextStyle(
                  //   //       // fontSize: ,
                  //   //     fontWeight: FontWeight.bold
                  //   //   ),
                  //   // ),
                  //     SizedBox(width: 10),
                  //     Icon(Icons.arrow_forward, size: 20,)
                  // ],
                  // ),

                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        elevation: 5,
                        onPressed: () {
                          _makePhoneCall();
                        },
                        child: Center(
                          child: Container(
                            child: Lottie.asset('assets/lotti/three.json', height: 200, reverse: true, repeat: true, fit: BoxFit.cover),
                          ),
                        ),
                      ),

                     const Padding(
                        padding: EdgeInsets.only(bottom:20.0),
                        child: Center(
                          child: Text(
                            'Call Us Today',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Powered By'),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/seld_logo.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],

              ),

            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }
}
