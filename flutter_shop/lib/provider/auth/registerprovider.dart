import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_shop/Model/user.dart';

late User userRegister;
bool tam = false;
String mess = '';

// ignore: camel_case_types
class registerProvider with ChangeNotifier {
  Future<bool> register(String email, String password, String name,
      String passwordConfirmation) async {
    User userRegister;
    bool dk = false;
    final response =
        await http.post(Uri.parse('http://192.168.1.7:8000/api/login'), body: {
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'name': name
    });
    if (response.statusCode == 200) {
      dynamic object = json.decode(response.body);
      dynamic resutl = object['success'];
      dk = resutl;
      dynamic m = object['message'];
      mess = m;
      tam = dk;
      if (tam == true) {
        dynamic data = object['user'];
        userRegister = User.fromJson(data);
        userRegister = userRegister;
      }
    } else {
      print('register faild');
    }
    notifyListeners();
    return tam;
  }
}
