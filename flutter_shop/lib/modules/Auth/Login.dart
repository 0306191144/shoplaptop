import 'package:flutter/material.dart';
import 'package:flutter_shop/widget/mybutton_widget.dart';
import 'package:flutter_shop/widget/mytextformfield_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
          MyTextFormField(
              hintText: 'Nhập Email',
              prefixIcon: Icons.email,
              textController: emailController),
          MyTextFormField(
              obscureText: true,
              hintText: 'Nhập Password',
              prefixIcon: Icons.password,
              textController: passwordController),
          const SizedBox(
            height: 20.0,
          ),
          MyButtonWidget(
              text: 'Đăng nhập',
              textStyle: const TextStyle(fontSize: 16.0, color: Colors.white),
              onPress: () {},
              color: Colors.yellow,
              padding: EdgeInsets.zero),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bạn chưa có tài khoản? '),
              TextButton(
                child: const Text('Đăng ký'),
                onPressed: () {},
              )
            ],
          )
        ]),
      ),
    );
  }
}
