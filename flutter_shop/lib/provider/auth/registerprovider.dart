import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_shop/Model/user.dart';

late User userRegister;
bool tam = true;
String mess = '';

class registerProvider with ChangeNotifier {
  Future<bool> register(String email, String name, String password,
      String passwordconfirmation) async {
    final response =
        await http.post(Uri.parse('http://192.168.1.7:8000/api/login'), body: {
      'email': email,
      'password': password,
      'password_confirmation': passwordconfirmation,
      'name': name
    });

    if (response.statusCode == 200) {
      dynamic object = json.decode(response.body);
      dynamic resutl = object['success'];
      mess = object['message'];
      tam = resutl;
      if (tam == true) {
        dynamic data = object['user'];
        userRegister = User.fromJson(data);
      }
    } else {
      print('fail');
    }
    notifyListeners();
    return tam;
  }
}
