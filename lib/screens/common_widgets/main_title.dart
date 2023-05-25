import 'package:flutter/material.dart';
import 'package:maps/gen/fonts.gen.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF121212),
            fontWeight: FontWeight.w700,
            fontFamily: FontFamily.deeDee));
  }
}
