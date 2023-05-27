import 'package:flutter/material.dart';
import '../../gen/fonts.gen.dart';
import '../common_widgets/app_bar.dart';

class CoursesVideoLesson extends StatelessWidget {
  const CoursesVideoLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: createAppBar(context: context, title: "title"),
        body: ListView(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            children: const [
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Row(children: [
                  Text("урок 1",
                      style: TextStyle(
                          fontFamily: FontFamily.deeDee,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromRGBO(18, 18, 18, 1))),
                  Spacer(),
                  Text("60мин",
                      style: TextStyle(
                          fontFamily: FontFamily.deeDee,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(124, 124, 123, 1))),
                ]),
                Text("заголовок",
                    style: TextStyle(
                        fontFamily: FontFamily.deeDee,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromRGBO(18, 18, 18, 1))),
                SizedBox(height: 8),
                Text("Барокко. Бах. Гендель. Вы познакомитесь с принципами искусства и дизайна, которые помогут "
                    "вам видеть мир вокруг себя с новой перспективы. "
                    "Вы научитесь освобождать свою творческую мысль, избегая ограничений и "
                    "стереотипов, и будете стимулироват",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: FontFamily.deeDee)),
                SizedBox(height: 8),
                Text("смотреть полностью",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: FontFamily.deeDee,
                        color: Color.fromRGBO(18, 18, 18, 1))),
              ])
            ]));
  }
}
