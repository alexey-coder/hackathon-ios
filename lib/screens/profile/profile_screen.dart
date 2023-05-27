import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/learning_progress_card.dart';
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
              ]),
              const ProfileCoursesSection()
            ])));
  }
}

class ProfileCoursesSection extends StatelessWidget {
  const ProfileCoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Я изучаю',
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
          LearningProgressCard(
              viewModel: LearningProgressCardViewModel(
                  imageUrl:
                      'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                  smallLabel: 'Начинающим',
                  bigLabel: 'Думай как художник',
                  progress: 0.7,
                  progressTitle: '4 из 6 уроков')),
          LearningProgressCard(
              viewModel: LearningProgressCardViewModel(
                  imageUrl:
                      'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                  smallLabel: 'Начинающим',
                  bigLabel: 'Русское искусство как живопись',
                  progress: 0.3,
                  progressTitle: '2 из 5 уроков')),
          LearningProgressCard(
              viewModel: LearningProgressCardViewModel(
                  imageUrl:
                      'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                  smallLabel: 'Продвинутый уровень',
                  bigLabel: 'Гитарист-Маэстро',
                  progress: 0.2,
                  progressTitle: '1 из 5 уроков'))
        ]));
  }
}
