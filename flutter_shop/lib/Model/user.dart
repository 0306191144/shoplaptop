import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String img;
  final String address;
  final String gender;
  final int status;
  final int isadmin;
  final String birthday;
  User(
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.address,
    this.img,
    this.birthday,
    this.status,
    this.isadmin,
  );

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        img = json['img'],
        address = json['address'],
        gender = json['gender'],
        birthday = json['birthday'],
        status = json['status'],
        isadmin = json['isadmin'];
}
