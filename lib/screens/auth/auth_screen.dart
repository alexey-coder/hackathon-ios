import 'package:flutter/material.dart';
import 'package:maps/screens/auth/login_screen.dart';
import 'package:maps/screens/common_widgets/main_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Вы не авторизованы',
                          style: TextStyle(
                              color: Color(0xFF121212),
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 8),
                      const Text(
                          'Войдите или заригистрируйтесь, чтобы просматривать профиль смотреть видеокурсы и учавствовать в заданиях',
                          style: TextStyle(
                              color: Color(0xFF121212), fontSize: 16)),
                      const SizedBox(height: 24),
                      MainButton(
                          backgroundColor: const Color(0xFFAFCC46),
                          text: 'Войти',
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()))
                              }),
                      const SizedBox(height: 8),
                      MainButton(
                          backgroundColor:
                              const Color(0xFF0D1019).withAlpha(10),
                          text: 'Зарегистрироваться',
                          onPressed: () => {}),
                      const SizedBox(height: 40),
                      Stack(children: [
                        Container(
                          height: 2,
                          color: const Color(0xFFEDEDED),
                          margin: const EdgeInsets.only(top: 7),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                color: Colors.white,
                                width: 190,
                                child: const Text('Или войти с помощью',
                                    textAlign: TextAlign.center,
                                    style: TextStyle())))
                      ]),
                      const SizedBox(height: 40),
                      MainButton(
                          backgroundColor: const Color(0xFF0077FF),
                          textColor: Colors.white,
                          text: 'ВКонтакте',
                          onPressed: () => {})
                    ]))));
  }
}
