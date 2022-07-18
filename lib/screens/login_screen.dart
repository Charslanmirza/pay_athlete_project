import 'package:flutter/material.dart';
import 'package:signup_with_provider/widgets/login_screen_widgets.dart/login_form.dart';

import '../constrants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                gap20,
                const Text(
                  "Login",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 50),
                ),
                gap20,
                LoginForm(),
              ],
            ),
          )),
    );
  }
}
