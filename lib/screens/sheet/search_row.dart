import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/gen/fonts.gen.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 3),
      Assets.search
          .image(width: 24, height: 24, color: const Color(0xFF7C7C7B)),
      const SizedBox(width: 11),
      const Flexible(
          child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                  'ГМИИ имени Пушкина, Галерея искусства стран Европы и Америки XIX – XX веков',
                  style: TextStyle(
                      fontFamily: FontFamily.deeDee,
                      fontSize: 14,
                      color: Color(0xFF121212)))))
    ]);
  }
}
