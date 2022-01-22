import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/Auth/login.dart';
import 'package:flutter_shop/modules/Auth/reginster.dart';
import 'package:flutter_shop/modules/Cart/cart_page.dart';
import 'package:flutter_shop/modules/home/components/body.dart';

final themeMode = ValueNotifier(2);

class ListDemo extends StatelessWidget {
  const ListDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/',
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.values.toList()[value as int],
          debugShowCheckedModeBanner: false,
          routes: {
            '/Home': (ctx) => Home_body(),
            '/carts': (ctx) => Cart_Page(),
            '/Registration': (ctx) => RegisterScreen(),
            '/Login': (ctx) => LoginScreen(),
          },
        );
      },
      valueListenable: themeMode,
    );
  }
}

CartPage() {}

class DemoItem extends StatelessWidget {
  final String title;
  final String route;
  DemoItem(this.title, this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

// ignore: use_key_in_widget_constructors
class ListDemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List_page'),
        actions: [
          IconButton(
              icon: Icon(Icons.nightlight_round),
              onPressed: () {
                themeMode.value = themeMode.value == 1 ? 2 : 1;
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          DemoItem('Login', '/Login'),
          DemoItem('Registration', '/Registration'),
          DemoItem('cart', '/carts'),
          DemoItem('Home', '/Home'),
        ],
      ),
    );
  }
}
