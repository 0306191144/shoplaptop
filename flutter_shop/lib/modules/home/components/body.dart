import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/home/components/Category.dart';
import 'package:flutter_shop/modules/home/components/footer.dart';
import 'package:flutter_shop/modules/home/components/listProduct.dart';
import 'package:flutter_shop/modules/home/components/sline.dart';

Icon customIcon = const Icon(Icons.search);
Widget customSearchBar = const Text('Seach Name Product');

class Home_body extends StatefulWidget {
  Home_body({Key? key}) : super(key: key);

  @override
  Home_bodyState createState() => new Home_bodyState();
}

class Home_bodyState extends State<Home_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.clear);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Name Product',
                        hintStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.black26),
                    ),
                  );
                } else {
                  customSearchBar = const Text('Seach');
                  customIcon = const Icon(Icons.search);
                }
              });
            },
            icon: customIcon,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      bottomNavigationBar: Footer(),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(height: 30),
        CenterPageLarge(),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(right: 250),
          child: Text('Category',
              style: TextStyle(
                fontSize: 20,
              )),
        ),
        Category_home(),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(right: 200),
          child: Text('NewProducts',
              style: TextStyle(
                fontSize: 20,
              )),
        ),
        SizedBox(height: 15),
        LstItemCard(),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.only(right: 200),
          child: Text('Popular Product',
              style: TextStyle(
                fontSize: 20,
              )),
        ),
        SizedBox(height: 15),
        LstItemCard(),
      ])),
    );
  }
}
