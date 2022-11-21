import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dial_a_plumber/models/user_models.dart';
import 'package:dial_a_plumber/pages/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  // our form key
  final _formKey = GlobalKey<FormState>();

  // editing Controller
  final phoneNumberEditingController = new TextEditingController();
  final regionEditingController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    //Phone Number field
    final phoneNumberField = TextFormField(
        autofocus: false,
        controller: phoneNumberEditingController,
        keyboardType: TextInputType.phone,
        validator: (value) {
          // RegExp regex = new RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("First Name cannot be Empty");
          }
          // if (!regex.hasMatch(value)) {
          //   return ("Enter Valid name(Min. 3 Character)");
          // }
          return null;
        },
        onSaved: (value) {
          phoneNumberEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          hintText: 'Enter Phone Number',
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
    );

    //Region field
    final regionField = TextFormField(
      autofocus: false,
      controller: regionEditingController,
      keyboardType: TextInputType.text,
      validator: (value) {
        // RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name cannot be Empty");
        }
        // if (!regex.hasMatch(value)) {
        //   return ("Enter Valid name(Min. 3 Character)");
        // }
        return null;
      },
      onSaved: (value) {
        regionEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.location_on_outlined),
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintText: 'Enter Your Region',
        labelText: 'Region',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );




    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                'Help us reach where you are in no time',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image1.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              phoneNumberField,
              const SizedBox(height: 10),
              regionField,
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()),);
                },
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
      ),
    );
  }

}
