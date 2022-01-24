import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/auth/login.dart';
import 'package:flutter_shop/provider/auth/loginprovider.dart';
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
        child: const MaterialApp(
          title: 'tranducminh',
          home: loginScreen(),
        ));
  }
}
