import 'package:flutter/material.dart';
import 'package:maps/app_tab_bar.dart';
import 'package:maps/screens/auth/auth_screen.dart';
import 'package:maps/screens/feed/feed_screen.dart';
import 'package:maps/screens/map/map_screen.dart';
import 'package:maps/providers/tab_provider.dart';
import 'package:maps/screens/profile/profile_screen.dart';
import 'package:provider/provider.dart';

import 'courses/courses_screen.dart';
import 'learning/learning_screen.dart';

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
        return const FeedScreen();
      case MyTab.teaching:
        return const LearningScreen();
      case MyTab.courses:
        return const CoursesScreen();
      case MyTab.map:
        return MapScreen();
      case MyTab.profile:
        return const AuthScreen(); //ProfileScreen();
    }
  }
}
