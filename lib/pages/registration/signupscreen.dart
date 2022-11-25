import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dial_a_plumber/models/user_models.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_utils/src/extensions/dynamic_extensions.dart';


import '../pages.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const String routeName = '/signup';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const SignupScreen(),
    );
  }

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  // string for displaying the error Message
  String? errorMessage;


  // Our form Key
  final _formKey = GlobalKey<FormState>();


  // Editing Controller
  final fullNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final phoneNumberEditingController = new TextEditingController();
  final regionEditingController = new TextEditingController();
  final personTypeEditingController = new TextEditingController();


  postDetailsToFirestore(){



    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      // User? user = _auth.currentUser;


      UserModel userModel = UserModel();

      // writing all the values
      userModel.email = emailEditingController.text;
      userModel.fullName = fullNameEditingController.text;
      userModel.personType = personTypeEditingController.text;
      userModel.phoneNumber = phoneNumberEditingController.text;
      userModel.region = regionEditingController.text;

      // await firebaseFirestore
      firebaseFirestore
      .collection("users")
          .doc(userModel.uid)
          .set(userModel.toMap());

      if(_formKey.currentState!.validate()) {
        Navigator.pushAndRemoveUntil(
            (context),
            MaterialPageRoute(builder: (context) => DashboardScreen()),
                (route) => false);
        Fluttertoast.showToast(msg: "Submission Successful");
      }
      }

  @override
  Widget build(BuildContext context) {
     // Full Name field
    final fullNameField = TextFormField(
      autofocus: false,
      controller: fullNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid name(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        fullNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintText: 'Full Name',
        labelText: 'Full Name',
        border: OutlineInputBorder(),
      ),
    );

    // phone Number
    final phoneNumberField = TextFormField(
      autofocus: false,
      controller: phoneNumberEditingController,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Phone Number cannot be Empty");
        }
        return null;
      },
      onSaved: (value) {
        phoneNumberEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintText: '+254',
        labelText: 'Phone Number',
        border: OutlineInputBorder(),
      ),
    );

    // region Number
    final regionField = TextFormField(
      autofocus: false,
      controller: regionEditingController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Region cannot be Empty");
        }
        return null;
      },
      onSaved: (value) {
        regionEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.location_on),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintText: 'Kisumu',
        labelText: 'Region',
        border: OutlineInputBorder(),
      ),
    );

    //Person Field
    final personTypeField = TextFormField(
      autofocus: false,
      controller: personTypeEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("This cannot be Empty");
        }
        return null;
      },
      onSaved: (value) {
        personTypeEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintText: 'Contractor, Business, Personal',
        labelText: 'Who are you?',
        border: OutlineInputBorder(),
      ),
    );

    // Button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        color: Colors.blue[900],
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          postDetailsToFirestore();
        },
        child: const Text(
          "Submit",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    //
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                const Text(
                  'Help us reach where you are in no time',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10
                ),
                const SizedBox(height: 50),
                fullNameField,
                const SizedBox(height: 20),
                personTypeField,
                const SizedBox(height: 20),
                phoneNumberField,
                const SizedBox(height: 20),
                regionField,
                const SizedBox(height: 30),
                signupButton,
                // ForgotPassword
                const SizedBox(height: 20),
                SizedBox(height: MediaQuery.of(context).size.height / 14),
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


