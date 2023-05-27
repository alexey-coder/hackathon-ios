import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/screens/common_widgets/preset_card.dart';

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Достижения',
                style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
            TextButton(
                onPressed: () => {},
                child: const Text('Смотреть все',
                    style: TextStyle(color: Color(0xFF121212), fontSize: 14)))
          ]),
          const SizedBox(height: 16),
          Row(children: [
            PresetCard(
                flex: 156 / 134,
                image: Assets.ach1.image(),
                itemHeight: 134,
                onTap: () => {}),
            const SizedBox(width: 8),
            PresetCard(
                flex: 156 / 134,
                image: Assets.ach2.image(),
                itemHeight: 134,
                onTap: () => {})
          ])
        ]));
  }
}
