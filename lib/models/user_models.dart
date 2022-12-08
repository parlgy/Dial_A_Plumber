import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid;
  String? fullName;
  String? phoneNumber;
  String? region;
  String? personType;

  UserModel({this.uid, this.fullName,this.personType, this.phoneNumber, this.region});

  // receive Data from the server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      fullName: map['fullName'],
      phoneNumber: map['phoneNumber'],
      region: map['region'],
      personType: map['personType']
    );
  }

  // Sending data to the server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'region': region,
      'personType': personType,
    };
  }
}
