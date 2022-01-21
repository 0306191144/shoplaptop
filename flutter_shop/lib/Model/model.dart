import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final bool isFavourite, isPopular;
  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      this.isPopular = false,
      this.isFavourite = false});
}

List<Product> products = [
  Product(
      id: 1,
      title: "xxxx",
      price: 234,
      description: dummyText,
      image: "assets/images/bag_1.png",
      isFavourite: false,
      isPopular: false),
  Product(
      id: 2,
      title: "PlayStation 5g",
      price: 234,
      description: dummyText,
      image: "assets/images/bag_2.png",
      isFavourite: false,
      isPopular: false),
  Product(
      id: 3,
      title: "PlayStation 4p",
      price: 234,
      description: dummyText,
      image: "assets/images/bag_3.jpg",
      isFavourite: false,
      isPopular: false),
  Product(
      id: 4,
      title: "Hades",
      price: 234,
      isFavourite: false,
      description: dummyText,
      image: "assets/images/bag_1.png",
      isPopular: false),
  Product(
      id: 5,
      title: "PS5 Controller",
      price: 234,
      isFavourite: false,
      description: dummyText,
      image: "assets/images/bag_2.png",
      isPopular: false),
  Product(
    id: 6,
    title: "PlayStation 4",
    price: 234,
    isFavourite: false,
    description: dummyText,
    image: "assets/images/bag_3.jpg",
    isPopular: false,
  ),
];

String dummyText =
    "The all new lighter and slimmer PlayStation4 system has a 1TB hard drive for all of the greatest games, TV, music and more. Incredible Games You've come to the right place. Exclusive games take you on incrediblenjourneys, from critically acclaimed indies toaward winning AAA hits.";
