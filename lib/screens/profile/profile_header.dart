import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFFF9F9F9)),
          height: 140,
          margin: const EdgeInsets.only(top: 44)),
      Align(
          alignment: Alignment.topCenter,
          child: ClipRRect(
              child: Assets.profilePhoto.image(height: 88, width: 88))),
      const Padding(
          padding: EdgeInsets.only(top: 100),
          child: Align(
              alignment: Alignment.center,
              child: Text('Карл Брюлов',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w700)))),
      Padding(
          padding: const EdgeInsets.only(top: 100, left: 12, right: 12),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFD9E5A6)),
                  height: 64,
                  margin: const EdgeInsets.only(top: 44),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Row(children: [
                        Assets.level.image(width: 48, height: 48),
                        const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Магистр знаний',
                                  style: TextStyle(
                                      color: Color(0xFF121212), fontSize: 16)),
                              SizedBox(height: 4),
                              Text('3253 знаний',
                                  style: TextStyle(
                                      color: Color(0xFF121212), fontSize: 12))
                            ]),
                        const Spacer(),
                        const Stack(alignment: Alignment.center, children: [
                          CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              color: Color(0xFFAFCC46),
                              value: 0.75),
                          Text(' 75%',
                              style: TextStyle(
                                  color: Color(0xFF121212),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600))
                        ])
                      ])))))
    ]);
  }
}
