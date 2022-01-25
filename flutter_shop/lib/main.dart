import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/auth/login.dart';
import 'package:flutter_shop/modules/auth/reginster.dart';
import 'package:flutter_shop/provider/auth/loginprovider.dart';
import 'package:flutter_shop/provider/auth/registerprovider.dart';
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
          ChangeNotifierProvider(create: (_) => registerProvider()),
        ],
        child: GestureDetector(
            onTap: () =>
                WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus(),
            child: const MaterialApp(
              title: 'tranducminh',
              home: RegisterScreen(),
            )));
  }
}
