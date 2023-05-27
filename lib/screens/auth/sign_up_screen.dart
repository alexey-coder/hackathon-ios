import 'package:flutter/material.dart';
import 'package:maps/providers/auth_provider.dart';
import 'package:maps/screens/auth/login_screen.dart';
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
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Регистрация',
                          style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 16),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: const Color(0xFFD0D0D0)),
                              color: Colors.white),
                          constraints: const BoxConstraints(minHeight: 56),
                          child: TextField(
                              onChanged: authProvider.changeLogin,
                              decoration: const InputDecoration(
                                  hintText: 'Введите логин',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(16)))),
                      const SizedBox(height: 8),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: const Color(0xFFD0D0D0)),
                              color: Colors.white),
                          constraints: const BoxConstraints(minHeight: 56),
                          child: TextField(
                              onChanged: authProvider.changePassword,
                              decoration: const InputDecoration(
                                  hintText: 'Введите пароль',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(16)))),
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
                          const Text('Есть аккаунт?',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF121212))),
                          TextButton(
                              onPressed: () => {
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
                        ],
                      )
                    ]))));
  }
}
