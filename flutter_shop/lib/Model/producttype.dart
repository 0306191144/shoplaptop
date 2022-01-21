import 'package:flutter/material.dart';

class producttype {
  final int id;
  final String nameproductype;

  final String image;
  producttype({
    required this.id,
    required this.nameproductype,
    required this.image,
  });
}

List<producttype> producttypes = [
  producttype(
      id: 1,
      nameproductype: 'nameproductype',

      image: 'assets/images/bag_1.png'),
  producttype(
      id: 2,
      nameproductype: 'nameproductype',
      image: "assets/images/bag_1.png"),
];
