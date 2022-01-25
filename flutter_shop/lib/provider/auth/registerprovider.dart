import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_shop/Model/user.dart';

// ignore: camel_case_types
class registerProvider with ChangeNotifier {
  late User userRegister;
  bool tam = false;
  String mess = '';
  Future<bool> register(String email, String name, String password,
      String passwordconfirmation) async {
    final response = await http
        .post(Uri.parse('http://192.168.1.7:8000/api/register'), body: {
      'email': email,
      'name': name,
      'password': password,
      'password_confirmation': passwordconfirmation,
    });

    dynamic object = await json.decode(response.body);
    print(object);
    dynamic resutl = object['success'];
    tam = resutl;
    if (tam == true) {
      dynamic data = object['user'];
      userRegister = User.fromJson(data);
    } else {
      print('do file fail');
    }
    notifyListeners();
    return tam;
  }
}
