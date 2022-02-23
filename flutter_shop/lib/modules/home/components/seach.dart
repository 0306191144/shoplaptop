import 'package:flutter/material.dart';
import 'package:flutter_shop/model/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [],
    );
  }
}
