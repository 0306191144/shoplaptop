import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_shop/Model/user.dart';

class registerProvider with ChangeNotifier {
  late User userRegister;
  bool tam1 = false;
  Future<bool> register(String email, String password, String name,
      String password_confirmation) async {
    User userRegister;
    bool dk = false;
    final response =
        await http.post(Uri.parse('http://192.168.1.7:8000/api/login'), body: {
      'email': email,
      'password': password,
      'password_confirmation': password_confirmation,
      'name': name
    });
    if (response.statusCode == 200) {
      dynamic object = json.decode(response.body);
      dynamic resutl = object['success'];
      dk = resutl;
      tam1 = dk;
      if (tam1 == true) {
        dynamic data = object['user'];
        userRegister = User.fromJson(data);
        userRegister = userRegister;
      }
    } else {
      print('register faild');
    }
    notifyListeners();
    return tam1;
  }
}
