import 'package:flutter/material.dart';
import 'package:maps/tab_provider.dart';
import 'package:provider/provider.dart';

class MyTabController extends StatelessWidget {
  const MyTabController({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<TabProvider>();
    return Scaffold(
        body: Center(child: buildBodyFor(provider.selectedTab)),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), label: 'Обучение'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.switch_video_outlined), label: 'Курсы'),
              BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Карта'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle), label: 'Профиль')
            ],
            currentIndex: provider.selectedTab.index,
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: const Color(0xFF7C7C7B),
            unselectedLabelStyle: const TextStyle(color: Color(0xFF7C7C7B)),
            onTap: (value) {
              var newTab =
                  MyTab.values.where((element) => element.index == value).first;
              provider.changeTab(newTab);
            }));
  }

  Widget buildBodyFor(MyTab tab) {
    switch (tab) {
      case MyTab.main:
        return const Text('Main');
      case MyTab.teaching:
        return const Text('Main');
      case MyTab.courses:
        return const Text('Main');
      case MyTab.map:
        return const Text('Main');
      case MyTab.profile:
        return const Text('Main');
    }
  }
}
