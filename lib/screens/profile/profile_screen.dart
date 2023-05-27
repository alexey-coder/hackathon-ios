import 'package:flutter/material.dart';
import 'package:maps/screens/profile/profile_header.dart';
import 'package:maps/screens/profile/profile_stats_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                children: [
              const ProfileHeader(),
              const SizedBox(height: 16),
              Row(children: [
                ProfileStatsCard(
                    title: '154', subtite: 'Друзья', onTap: () => {}),
                const SizedBox(width: 8),
                ProfileStatsCard(
                    title: '89', subtite: 'Подписчики', onTap: () => {})
              ]),
              const SizedBox(height: 8),
              Row(children: [
                ProfileStatsCard(
                    title: '3', subtite: 'Курсов пройдено', onTap: () => {}),
                const SizedBox(width: 8),
                ProfileStatsCard(
                    title: '3', subtite: 'Награды', onTap: () => {})
              ])
            ])));
  }
}
