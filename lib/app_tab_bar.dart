import 'package:flutter/material.dart';
import 'package:maps/localization.dart';
import 'package:maps/providers/tab_provider.dart';
import 'package:provider/provider.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/gen/fonts.gen.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<TabProvider>();
    return BottomNavigationBar(
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Assets.main
                  .image(width: 24, height: 24, color: const Color(0xFF7C7C7B)),
              activeIcon: Assets.main
                  .image(width: 24, height: 24, color: const Color(0xFF121212)),
              label: Localization.shared.locale.main),
          BottomNavigationBarItem(
              icon: Assets.education
                  .image(width: 24, height: 24, color: const Color(0xFF7C7C7B)),
              activeIcon: Assets.education
                  .image(width: 24, height: 24, color: const Color(0xFF121212)),
              label: Localization.shared.locale.education),
          BottomNavigationBarItem(
              icon: Assets.courses
                  .image(width: 24, height: 24, color: const Color(0xFF7C7C7B)),
              activeIcon: Assets.courses
                  .image(width: 24, height: 24, color: const Color(0xFF121212)),
              label: Localization.shared.locale.courses),
          BottomNavigationBarItem(
              icon: Assets.map
                  .image(width: 24, height: 24, color: const Color(0xFF7C7C7B)),
              activeIcon: Assets.map
                  .image(width: 24, height: 24, color: const Color(0xFF121212)),
              label: Localization.shared.locale.map),
          BottomNavigationBarItem(
              icon: Assets.profile
                  .image(width: 24, height: 24, color: const Color(0xFF7C7C7B)),
              activeIcon: Assets.profile
                  .image(width: 24, height: 24, color: const Color(0xFF121212)),
              label: Localization.shared.locale.profile)
        ],
        currentIndex: provider.selectedTab.index,
        selectedItemColor: const Color(0xFF121212),
        unselectedItemColor: const Color(0xFF7C7C7B),
        unselectedLabelStyle: const TextStyle(
            fontFamily: FontFamily.deeDee, color: Color(0xFF7C7C7B)),
        selectedLabelStyle: const TextStyle(
            fontFamily: FontFamily.deeDee,
            color: Color(0xFF121212),
            fontWeight: FontWeight.w700),
        onTap: (value) => handleTap(provider, value));
  }

  void handleTap(TabProvider provider, int value) {
    var newTab = MyTab.values.where((element) => element.index == value).first;
    provider.changeTab(newTab);
  }
}
