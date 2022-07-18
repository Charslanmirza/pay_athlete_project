import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_with_provider/providers/auth_provider.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_elevatedbutton.dart';
import 'package:signup_with_provider/widgets/custom_widgets/custom_textform_field.dart';

import '../../constrants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();

    super.dispose();
  }

  void saveForm() {
    var form = _formKey.currentState;
    if (form!.validate()) {
      final auth = Provider.of<AuthPrivder>(context, listen: false);
      bool correctCredentails = auth.login(
          email: _emailController.text, password: _passwordController.text);
      if (correctCredentails) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextFormField(
            labelText: "Email",
            textValidator: (value) {
              if (value == null || value == '') {
                return "Please Enter The Email";
              } else if (!value.contains('@') || !value.contains('.')) {
                return 'Email is Not Valid';
              }
              _emailController.text = value;
              return null;
            },
          ),
          gap20,
          CustomTextFormField(
            labelText: "Password",
            hideText: true,
            textValidator: (value) {
              if (value == null || value == '') {
                return "Please Enter The Password";
              } else if (value.length < 6) {
                return 'Password Is Too Short';
              }
              _passwordController.text = value;

              return null;
            },
          ),
          gap20,
          CustomElevatedButton(
            onPressed: saveForm,
            text: "Login",
            color: Color(0xffA75154),
          )
        ],
      ),
    );
  }
}
