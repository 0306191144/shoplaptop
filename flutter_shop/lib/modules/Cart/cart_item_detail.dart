import 'package:flutter/material.dart';
import 'package:flutter_shop/Model/model.dart';

class CartItemDetail extends StatefulWidget {
  final Product product;
  final Function press;
  const CartItemDetail({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  @override
  _CartItemDetailState createState() => _CartItemDetailState();
}

class _CartItemDetailState extends State<CartItemDetail> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      if (counter == 50) {
        return null;
      }
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter == 0) {
        return null;
      }
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 80,
                width: 80,
                child: Hero(
                  tag: "${widget.product.id}",
                  child: Image.asset(widget.product.image),
                ),
              ),
              Text('${widget.product.title}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "${widget.product.price}",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    child: GestureDetector(
                        onTap: decrementCounter,
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 30,
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 6, right: 6),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 30,
                    width: 30,
                    child: GestureDetector(
                        onTap: incrementCounter,
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: GestureDetector(
                        // onTap: để xoá sản phẩm  ,
                        child: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
