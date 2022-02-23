import 'package:flutter/material.dart';
import 'package:flutter_shop/model/producttype.dart';

class Product {
  final String image, nameproduct, description;
  final int price, id, status, producttypeid, stock;

  Product(
      {required this.id,
      required this.producttypeid,
      required this.image,
      required this.nameproduct,
      required this.price,
      required this.stock,
      required this.description,
      required this.status});
  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nameproduct = json['nameproduct'],
        image = json['image'],
        price = json['price'],
        producttypeid = json['productypeid'],
        description = json['price'],
        stock = json['stock'],
        status = json['status'];
}
