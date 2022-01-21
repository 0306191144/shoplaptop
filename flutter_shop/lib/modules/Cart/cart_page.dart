import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/Cart/cart_bg.dart';
import 'appbar_cart.dart';
import 'cart_bottom_bar.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<Cart_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CartBottomBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[AppBarCart(), CartBackground()],
          ),
        ),
      ),
    );
  }
}
