import 'package:flutter/cupertino.dart';
import 'package:signup_with_provider/model/user.dart';

class AuthPrivder extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  void signUp({
    required String firstName,
    required String lastName,
    required String language,
    required String city,
    required String edu,
    required String age,
    required String school,
    required String gender,
    required String sport,
    required String nil,
    required String athlete,
    required String contact,
    required String bio,
  }) {
    _user = User(
      email: firstName,
      password: language,
      name: lastName,
    );
    notifyListeners();
  }

  bool login({
    required String email,
    required String password,
  }) {
    if (_user!.email == email && _user!.password == password) {
      return true;
    }
    return false;
  }
}
