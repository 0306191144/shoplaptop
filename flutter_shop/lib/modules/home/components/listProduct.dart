// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_shop/model/product.dart';
import 'package:flutter_shop/modules/home/components/Item.dart';

class LstItemCard extends StatefulWidget {
  const LstItemCard({Key? key}) : super(key: key);

  @override
  _LstItemCardState createState() => _LstItemCardState();
}

class _LstItemCardState extends State<LstItemCard> {
  @override
  Widget build(BuildContext context) {
//
    var products;
    return Wrap(
        spacing: 20,
        direction: Axis.horizontal,
        children: List.generate(products.length, (index) {
          return Container(
              width: 150,
              height: 200,
              child: ItemCard(product: products[index], press: () {}));
        }));
  }
}
