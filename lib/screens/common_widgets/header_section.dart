import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title,
          style: const TextStyle(
              color: Color(0xFF121212),
              fontSize: 20,
              fontWeight: FontWeight.w700)),
      TextButton(
          onPressed: onPressed,
          child: const Text('Смотреть все',
              style: TextStyle(color: Color(0xFF121212), fontSize: 14)))
    ]);
  }
}
