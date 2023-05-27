import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String login = '';
  String password = '';
  bool passwordHidden = true;

  void reset() {
    passwordHidden = true;
  }

  void changeLogin(String newValue) {
    login = newValue;
    notifyListeners();
  }

  void changePassword(String newValue) {
    password = newValue;
    notifyListeners();
  }

  void changePasswordHidden() {
    passwordHidden = !passwordHidden;
    notifyListeners();
  }

  bool get isLoginButtonEnabled {
    final bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(login);
    return isEmailValid && login.isNotEmpty && password.length >= 6;
  }
}
