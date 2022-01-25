// ignore: must_be_immutable
/*
import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/products/productSlider.dart';
import 'package:flutter_shop/widget/alter.dart';
import 'package:flutter_shop/widget/mybutton_widget.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final Product product;
  Body({Key? key, required this.product}) : super(key: key);

  int curentPage = 0;
  String size = '';
  String color = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                productSilder (images: product.images),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(

                  ),
                ),
              ],
            ),
          ),
        ),
        MyButtonWidget(
          color: Colors.orange,
          width: double.infinity,
          text: "Add cart",
          onPress: () async {},
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          padding: const EdgeInsets.all(15),
        ),
      ],
    );
  }
}
*/
