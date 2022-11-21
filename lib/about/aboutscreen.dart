

import 'package:flutter/material.dart';

import '../pages/profile/profilepage.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static const String routeName = '/About';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const AboutScreen(),
    );
  }

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
                  builder: (context) => const EditProfilePage(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration:const BoxDecoration(
                image: DecorationImage(

                  image: AssetImage('assets/images/onboarding5.jpg'),
                  fit: BoxFit.cover,

                )
              )
            ),
            const SizedBox(height:20),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("About Us", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Text('Dial a plumber is an initiavite by SIELD NETWORK.....', style: TextStyle(
                    fontSize: 18,
                  ),),


                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
