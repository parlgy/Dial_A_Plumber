import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  String? uid;
  String? fullName;
  String? email;

  UserModel({this.uid, this.fullName, this.email});

  // recieve Data from the server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      fullName: map['fullName'],
      email: map['email'],
    );
  }

  // Sending data to the server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fullName': fullName,
      'email': email,
    };
  }
}



//User information Model

class UserInfo{
  Int? phoneNumber;
  String? region;

  UserInfo({this.phoneNumber, this.region});

  factory UserInfo.fromMap(map){
    return UserInfo(
      phoneNumber: map['phoneNumber'],
      region: map['region'],
    );
  }


  Map<String, dynamic> toMap(){
    return{
      'phoneNumber': phoneNumber,
      'region': region
    };
  }
}