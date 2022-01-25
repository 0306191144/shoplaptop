import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_shop/Model/user.dart';

class UserProvider with ChangeNotifier {
  late User user;
  bool kq1 = false;
  Future<bool> login(String email, String password) async {
    User userLogin;
    bool kq2 = false;
    final response =
        await http.post(Uri.parse('http://192.168.1.7:8000/api/login'), body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      dynamic object = json.decode(response.body);
      dynamic resutl = object['success'];
      kq1 = resutl;
      if (kq1 == true) {
        dynamic data = object['user'];
        userLogin = User.fromJson(data);
        user = userLogin;
      }
    } else {
      // ignore: avoid_print
      print('login faild');
    }
    notifyListeners();
    return kq1;
  }
}
