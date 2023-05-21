import 'package:flutter/material.dart';
import 'package:maps/map_screen.dart';
import 'package:maps/tab_provider.dart';
import 'package:provider/provider.dart';
import 'app_tab_bar.dart';

class MyTabController extends StatelessWidget {
  const MyTabController({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<TabProvider>();
    return Scaffold(
        body: Center(child: buildBodyFor(provider.selectedTab)),
        bottomNavigationBar: const AppTabBar());
  }

  Widget buildBodyFor(MyTab tab) {
    switch (tab) {
      case MyTab.main:
        return const Text('Главная');
      case MyTab.teaching:
        return const Text('Обучение');
      case MyTab.courses:
        return const Text('Курсы');
      case MyTab.map:
        return MapScreen();
      case MyTab.profile:
        return const Text('Профиль');
    }
  }
}
