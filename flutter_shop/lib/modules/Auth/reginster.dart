import 'package:flutter/material.dart';
import 'package:flutter_shop/modules/Auth/Login.dart';
import 'package:flutter_shop/provider/auth/registerprovider.dart';
import 'package:flutter_shop/widget/alter.dart';
import 'package:flutter_shop/widget/mybutton_widget.dart';
import 'package:flutter_shop/widget/mytextformfield_widget.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordComfirmationController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    passwordComfirmationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<registerProvider>(context, listen: false);
    return Scaffold(
      body: Consumer<registerProvider>(
        builder: (_, value, child) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const Text('Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                    MyTextFormField(
                        hintText: 'Nhập Email',
                        prefixIcon: Icons.email,
                        textController: emailController),
                    MyTextFormField(
                        hintText: 'Nhập Họ tên',
                        prefixIcon: Icons.people,
                        textController: nameController),
                    MyTextFormField(
                        obscureText: true,
                        hintText: 'Nhập Password',
                        prefixIcon: Icons.password,
                        textController: passwordController),
                    MyTextFormField(
                        obscureText: true,
                        hintText: 'Xác nhận Password',
                        prefixIcon: Icons.password,
                        textController: passwordComfirmationController),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MyButtonWidget(
                        text: 'Đăng ký',
                        textStyle: const TextStyle(
                            fontSize: 16.0, color: Colors.white),
                        onPress: () async {
                          await api.register(
                              emailController.text,
                              passwordController.text,
                              nameController.text,
                              passwordComfirmationController.text);
                          if (tam == false) {
                            AlertMessage.showMsg(context, mess);
                          } else {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return loginScreen();
                            }));
                          }
                        },
                        color: Colors.yellow,
                        padding: EdgeInsets.zero),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Bạn đã có tài khoản? '),
                        TextButton(
                          child: const Text('Đăng nhập'),
                          onPressed: () {},
                        )
                      ],
                    )
                  ]),
            ),
          );
        },
      ),
    );
  }
}
