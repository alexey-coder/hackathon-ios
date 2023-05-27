import 'package:flutter/material.dart';
import 'package:maps/providers/auth_provider.dart';
import 'package:maps/screens/auth/auth_text_field.dart';
import 'package:maps/screens/auth/password_text_field.dart';
import 'package:maps/screens/auth/sign_up_screen.dart';
import 'package:maps/screens/common_widgets/main_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                      const Text('Авторизация',
                          style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 16),
                      AuthTextField(
                          hintText: 'Введите логин',
                          onTextChange: authProvider.changeEmail),
                      const SizedBox(height: 8),
                      PasswordTextField(
                          hintText: 'Введите пароль',
                          passwordHidden: authProvider.passwordHidden,
                          onTextChange: authProvider.changePassword,
                          onPasswordHiddenChange:
                              authProvider.changePasswordHidden),
                      const SizedBox(height: 40),
                      MainButton(
                          backgroundColor: authProvider.isLoginButtonEnabled
                              ? const Color(0xFFAFCC46)
                              : const Color(0xFFAFCC46).withOpacity(0.4),
                          textColor: Colors.white,
                          text: 'Войти',
                          onPressed: authProvider.isLoginButtonEnabled
                              ? () => {}
                              : null),
                      const SizedBox(height: 28),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Нет аккаунта?',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xFF121212))),
                            TextButton(
                                onPressed: () => {
                                      authProvider.reset(),
                                      Navigator.of(context)
                                          .pushReplacement(MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder: (context) {
                                                return const SignUpScreen();
                                              }))
                                    },
                                child: const Text('Зарегистрироваться',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF121212),
                                        fontWeight: FontWeight.w600)))
                          ])
                    ]))));
  }
}
