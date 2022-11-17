import 'package:dial_a_plumber/pages/dashboard/dashboardscreen.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  static const String routeName = '/editProfile';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const EditProfilePage(),
    );
  }

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.settings,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_back, size: 25),
                        Text(
                          'Back',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: const [
                      Icon(Icons.logout, size: 25),
                      Text(
                        'Logout',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'User Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Full Name',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: const [
                      Text(
                        'Joseph Kamau',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Email Address',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: const [
                      Text(
                        'josephkamau@gmail.com',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: const [
                      Text(
                        '+25400000000',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Region',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: const [
                      Text(
                        'Kisumu',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                children: const [
                  Icon(Icons.edit, size: 20),
                  SizedBox(width: 10),
                  Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
