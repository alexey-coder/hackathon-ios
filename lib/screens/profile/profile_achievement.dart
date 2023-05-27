import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/screens/common_widgets/header_section.dart';
import 'package:maps/screens/common_widgets/preset_card.dart';

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          HeaderSection(title: 'Достижения', onPressed: () => {}),
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
