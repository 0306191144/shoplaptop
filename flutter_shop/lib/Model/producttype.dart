import 'package:flutter/material.dart';

class producttype {
  final int id;
  final String nameproductype;
  final int status;

  final String image;
  producttype(
      {required this.id,
      required this.nameproductype,
      required this.image,
      required this.status});

  producttype.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nameproductype = json['nameproducttype'],
        image = json['image'],
        status = json['status'];
}
