import 'package:flutter/material.dart';

class Shevron extends StatelessWidget {
  const Shevron({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Spacer(),
      Container(
          width: 37,
          height: 4,
          decoration: const BoxDecoration(
              color: Color(0xFF7C7C7B),
              borderRadius: BorderRadius.all(Radius.circular(100)))),
      const Spacer()
    ]);
  }
}
