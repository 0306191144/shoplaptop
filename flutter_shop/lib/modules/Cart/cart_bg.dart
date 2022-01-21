import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/Cart/cart_item_detail.dart';

class CartBackground extends StatefulWidget {
  const CartBackground({Key? key}) : super(key: key);

  @override
  _StateCartBackground createState() => _StateCartBackground();
}

class _StateCartBackground extends State<CartBackground> {
  var products;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      height: 410,
      width: screenWidth.width * 1.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                spreadRadius: 1,
                blurRadius: 8)
          ]),
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Text(
                  'Oarsandalps',
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrange),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                thickness: 2,
              )),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                thickness: 2,
              )),
          Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
            child: CartItemDetail(
              product: products[1],
              press: (total) {
                setState(() {
                  total = total + products[1].price;
                });
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                thickness: 2,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Your Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
