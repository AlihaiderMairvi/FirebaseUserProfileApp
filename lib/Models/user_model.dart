// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

class UserModel {
  String? docId;
  String? name;
  String? email;
  String? phone;
  String? address;
  double? createdAt;

  UserModel({
    this.docId,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    docId: json["docId"],
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
    createdAt: json["createdAt"]?.toDouble(),
  );

  Map<String, dynamic> toJson(String userID) => {
    "docId": userID,
    "name": name,
    "email": email,
    "phone": phone,
    "address": address,
    "createdAt": createdAt,
  };
}
