import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';

class SectionSeeAllHeader extends StatelessWidget {
  const SectionSeeAllHeader({Key? key, required this.text, required this.press})
      : super(key: key);

  final String text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(text,
          style: const TextStyle(
              fontSize: 20,
              color: Color(0xFF121212),
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.deeDee)),
      const Spacer(),
      const Text("Смотреть все",
          style: TextStyle(
              fontSize: 14,
              color: Color(0xFF121212),
              // fontWeight: FontWeight.w700,
              fontFamily: FontFamily.deeDee))
    ]);
  }
}
