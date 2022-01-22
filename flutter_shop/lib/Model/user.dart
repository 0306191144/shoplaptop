import 'package:flutter/material.dart';

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  // final String img;
  final String address;
  final String gender;
  final int status;
  // final bool isadmin;
  // final DateTime birthday;
  // final DateTime createdAt;
  // final DateTime updatedAt;
  User(
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.address,
    // this.img,
    // this.birthday,
    this.status,
    // this.isadmin,
    // this.createdAt,
    // this.updatedAt,
  );

  // "id": 2,
  //       "name": "tran duc minh",
  //       "email": "minhk19cxx@gmail.com",
  //       "phone": null,
  //       "address": null,
  //       "gender": "nam",
  //       "birthday": null,
  //       "isadmin": 0,
  //       "status": 1,
  //       "email_verified_at": null,
  //       "created_at": "2022-01-22T02:27:42.000000Z",
  //       "updated_at": "2022-01-22T02:27:42.000000Z"

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        // img = json['img'],
        address = json['address'],
        gender = json['gender'],
        // birthday = json['birthday'],
        status = json['status'];
  // isadmin = json['isadmin'];
  // createdAt = json['created_at'],
  // updatedAt = json['updated_at'];

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name'] = this.name;
  //   data['email'] = this.email;
  //   data['phone'] = this.phone;
  //   // data['img'] = this.img;
  //   data['gender'] = this.gender;
  //   data['address'] = this.address;
  //   // data['birthday'] = this.birthday;
  //   data['status'] = this.status;
  //   // data['user_type_id'] = this.createdAt;
  //   // data['created_at'] = this.createdAt;
  //   // data['updated_at'] = this.updatedAt;
  //   return data;
  // }
}
