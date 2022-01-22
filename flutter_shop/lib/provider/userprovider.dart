import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_shop/Model/user.dart';

class UserProvider with ChangeNotifier {
  /*
 List<User> _user = [];
  List<User> get user => _user;
  List<User> _userFromJson(dynamic datas) =>
      List<User>.from(datas.map((data) => User.fromJson(data)));
      */
  late User _user;
  User get user => _user;

  Future<User?> login(String username, String password) async {
    User? userLogin;
    Map<String, dynamic> body = {'username': username, 'password': password};
    final response = await http.post(
        Uri.parse('http://10.0.2.2:8000/api/login'),
        body: jsonEncode(body));

    Map<String, dynamic> json = jsonDecode(response.body);
    userLogin = User.fromJson(json);
    _user = userLogin;
    notifyListeners();
    return userLogin;
  }
}
