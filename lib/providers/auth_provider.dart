import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AuthProvider extends ChangeNotifier {
  String login = '';
  String email = '';
  String password = '';
  String repeatPassword = '';
  bool passwordHidden = true;
  DateTime? selectedBirthDate;

  void reset() {
    passwordHidden = true;
    selectedBirthDate = null;
    login = '';
    email = '';
    password = '';
    repeatPassword = '';
  }

  void changeLogin(String newValue) {
    login = newValue;
    notifyListeners();
  }

  void changeEmail(String newValue) {
    email = newValue;
    notifyListeners();
  }

  void changePassword(String newValue) {
    password = newValue;
    notifyListeners();
  }

  void changeRepeatPassword(String newValue) {
    repeatPassword = newValue;
    notifyListeners();
  }

  void changePasswordHidden() {
    passwordHidden = !passwordHidden;
    notifyListeners();
  }

  void changeSelectedBirthDate(DateTime? newValue) {
    selectedBirthDate = newValue;
    notifyListeners();
  }

  String? get birthDate {
    if (selectedBirthDate != null) {
      String formattedDate =
          DateFormat('dd.MM.yyyy').format(selectedBirthDate!);
      return formattedDate;
    }
    return null;
  }

  bool get isLoginButtonEnabled {
    final bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    return isEmailValid && email.isNotEmpty && password.length >= 6;
  }

  bool get isSignUpButtonEnabled {
    final bool isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    return isEmailValid &&
        login.isNotEmpty &&
        login.length >= 4 &&
        password.length >= 6 &&
        password == repeatPassword &&
        selectedBirthDate != null;
  }
}
