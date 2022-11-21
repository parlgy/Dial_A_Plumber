import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  String? uid;
  String? fullName;
  String? email;
  String? phoneNumber;
  String? region;

  UserModel({this.uid, this.fullName, this.email, this.phoneNumber, this.region});

  // recieve Data from the server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      fullName: map['fullName'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      region: map['region']
    );
  }

  // Sending data to the server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fullName': fullName,
      'email': email,
      'phoneNumber': phoneNumber,
      'region': region
    };
  }
}



//User information Model

// class UserInfo{
//   String? uid;
//   Int? phoneNumber;
//   String? region;
//
//   UserInfo({this.phoneNumber, this.region, this.uid});
//
//   factory UserInfo.fromMap(map){
//     return UserInfo(
//       uid: map['uid'],
//       phoneNumber: map['phoneNumber'],
//       region: map['region'],
//
//     );
//   }
//
//
//   Map<String, dynamic> toMap(){
//     return{
//       'uid': uid,
//       'phoneNumber': phoneNumber,
//       'region': region
//     };
//   }
// }