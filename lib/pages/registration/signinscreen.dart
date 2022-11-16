import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  static const String routeName = '/signin';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const SigninScreen(),
    );
  }

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo2.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Log into your Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),

                // Input Fields Start here

                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    // obscureText: true,
                    // obscuringCharacter: "*",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                // Signup Button
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
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // ForgotPassword
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Forgot Password?'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Here',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Already have an account?'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Row(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
