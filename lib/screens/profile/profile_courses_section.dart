import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/header_section.dart';
import 'package:maps/screens/common_widgets/learning_progress_card.dart';

class ProfileCoursesSection extends StatelessWidget {
  const ProfileCoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          HeaderSection(title: 'Я изучаю', onPressed: () => {}),
          const SizedBox(height: 16),
          LearningProgressCard(
              viewModel: LearningProgressCardViewModel(
                  imageUrl:
                      'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                  smallLabel: 'Начинающим',
                  bigLabel: 'Думай как художник',
                  progress: 0.7,
                  progressTitle: '4 из 6 уроков')),
          const SizedBox(height: 8),
          LearningProgressCard(
              viewModel: LearningProgressCardViewModel(
                  imageUrl:
                      'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                  smallLabel: 'Начинающим',
                  bigLabel: 'Русское искусство как живопись',
                  progress: 0.3,
                  progressTitle: '2 из 5 уроков')),
          const SizedBox(height: 8),
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
