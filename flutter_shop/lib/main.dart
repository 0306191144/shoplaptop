import 'package:flutter/material.dart';
import 'package:flutter_shop/generated_plugin_registrant.dart';
import 'package:flutter_shop/listScreen.dart';
import 'package:flutter_shop/modules/Auth/login.dart';
import 'package:flutter_shop/modules/Auth/reginster.dart';
import 'package:flutter_shop/modules/Cart/cart_page.dart';
import 'package:flutter_shop/provider/userprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
        ],
        child: MaterialApp(
          title: 'tranducminh',
          home: LoginScreen(),
        ));
  }
}
