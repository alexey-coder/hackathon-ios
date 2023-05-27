import 'package:flutter/material.dart';
import 'package:maps/providers/auth_provider.dart';
import 'package:maps/screens/auth/auth_text_field.dart';
import 'package:maps/screens/auth/date_text_field.dart';
import 'package:maps/screens/auth/login_screen.dart';
import 'package:maps/screens/auth/password_text_field.dart';
import 'package:maps/screens/common_widgets/main_button.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var authProvider = context.watch<AuthProvider>();
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Регистрация',
                          style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 16),
                      AuthTextField(
                          hintText: 'Имя или псевдоним',
                          onTextChange: authProvider.changeLogin),
                      const SizedBox(height: 16),
                      DateTextField(
                          hintText: 'Дата вашего рождения',
                          dateText: authProvider.birthDate,
                          onFocusTextField: () => {
                                showDatePicker(
                                  context: context,
                                  initialDate:
                                      authProvider.selectedBirthDate != null
                                          ? authProvider.selectedBirthDate!
                                          : DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime.now(),
                                ).then((date) {
                                  authProvider.changeSelectedBirthDate(date);
                                })
                              }),
                      const SizedBox(height: 8),
                      const Text(
                        'Мы не покажем ваш день рождения другим пользователям',
                        style:
                            TextStyle(color: Color(0xFF7C7C7B), fontSize: 12),
                      ),
                      const SizedBox(height: 16),
                      AuthTextField(
                          hintText: 'Введите e-mail',
                          onTextChange: authProvider.changeEmail),
                      const SizedBox(height: 16),
                      PasswordTextField(
                          hintText: 'Придумайте пароль',
                          passwordHidden: authProvider.passwordHidden,
                          onTextChange: authProvider.changePassword,
                          onPasswordHiddenChange:
                              authProvider.changePasswordHidden),
                      const SizedBox(height: 16),
                      PasswordTextField(
                          hintText: 'Повторите пароль',
                          passwordHidden: authProvider.passwordHidden,
                          onTextChange: authProvider.changeRepeatPassword,
                          onPasswordHiddenChange:
                              authProvider.changePasswordHidden),
                      const SizedBox(height: 16),
                      MainButton(
                          backgroundColor: authProvider.isSignUpButtonEnabled
                              ? const Color(0xFFAFCC46)
                              : const Color(0xFFAFCC46).withOpacity(0.4),
                          text: 'Зарегистрироваться',
                          onPressed: authProvider.isSignUpButtonEnabled
                              ? () => {}
                              : null),
                      const SizedBox(height: 28),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Есть аккаунт?',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xFF121212))),
                            TextButton(
                                onPressed: () => {
                                      authProvider.reset(),
                                      Navigator.of(context)
                                          .pushReplacement(MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder: (context) {
                                                return const LoginScreen();
                                              }))
                                    },
                                child: const Text('Авторизоваться',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF121212),
                                        fontWeight: FontWeight.w600)))
                          ])
                    ]))));
  }
}
