import 'package:dial_a_plumber/pages/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String routeName = '/mainScreen';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const MainScreen(),
    );
  }

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      resizeToAvoidBottomInset: true,
      tabBar: CupertinoTabBar(
        height: 75,
        iconSize: 40,

        border: Border.all(color: Colors.transparent),
        // backgroundColor: Colors.white,
        // inactiveColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            // label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.info),
            // label: 'About',

          ),
        ],
      ),
      tabBuilder: ((context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(child: DashboardScreen());
            });
          default:
            return CupertinoTabView(builder: (context) {
              return const CupertinoPageScaffold(child: AboutScreen());
            });
        }
      }),
    );
  }
}
