import 'package:flutter/material.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({super.key});

  static const String routeName = '/userinformation';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const UserInformation(),
    );
  }

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
        child: Column(
          children: [
            const Text(
              'Help us reach where you are in no time',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image1.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // input forms
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
                hintText: '+254',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Region',
                hintText: 'Enter Your Region',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // onTap: () => ,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
