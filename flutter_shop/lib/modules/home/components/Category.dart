import 'package:flutter/material.dart';
import 'package:flutter_shop/model/product.dart';


class Category_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Product product;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/bag_1.png'),
            iconSize: 50,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/images/bag_1.png'),
            iconSize: 50,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/images/bag_1.png'),
            iconSize: 50,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
