import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String login = '';
  String password = '';

  void changeLogin(String newValue) {
    login = newValue;
    notifyListeners();
  }

  void changePassword(String newValue) {
    password = newValue;
    notifyListeners();
  }

  bool get isLoginButtonEnabled {
    return login.isNotEmpty && password.isNotEmpty;
  }
}
