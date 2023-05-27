import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/gen/fonts.gen.dart';
import 'package:maps/screens/common_widgets/header_section.dart';
import 'package:maps/screens/common_widgets/learning_progress_card.dart';
import 'package:maps/screens/common_widgets/preset_card.dart';
import 'package:maps/screens/common_widgets/search_text_field.dart';
import 'package:maps/screens/courses/courses_provider.dart';
import 'package:provider/provider.dart';

import '../courses_details/courses_details_screen.dart';
import 'courses_full_width_cell.dart';
import 'courses_half_width_cell.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.read<CoursesProvider>();
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 16),
                    child: ListView(
                        children: [
                      SearchTextField(
                          controller:
                              TextEditingController(text: provider.searchText),
                          focused: provider.searchFocused,
                          onFocusChange: provider.changeSearchFocused,
                          onTextChange: provider.changeSearchText,
                          onResetText: provider.resetText),
                      const SizedBox(height: 16),
                      HeaderSection(title: "Я изучаю", onPressed: () => {}),
                      LearningProgressCard(
                          viewModel: LearningProgressCardViewModel(
                              smallLabel: "eeee",
                              bigLabel: "dsdsd",
                              imageUrl:
                                  "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                              progressTitle: "eewwewe",
                              progress: 0.5)),
                      HeaderSection(title: "Вебинар", onPressed: () => {}),
                      const SizedBox(height: 24),
                      HeaderSection(title: "Рекомендации", onPressed: () => {}),
                        Row(children: [
                          CoursesFullWidthCell(
                              viewModel: CoursesViewModel(
                                  courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                                  numberOfLessons: "8 уроков",
                                  title: "title", description: "description"
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const CoursesDetailsScreen(
                                            title: "title",
                                            courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg")));
                              },
                              width: MediaQuery.of(context).size.width - (24 * 2))
                        ]),
                          const SizedBox(height: 16),
                        Row(children: [
                          const SizedBox(height: 16),
                          Row(children: [
                            CoursesHalfWidthCell(
                                viewModel: CoursesViewModel(
                                    courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                                    numberOfLessons: "8 уроков",
                                    title: "title",
                                    description: "description"
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const CoursesDetailsScreen(
                                              title: "title",
                                              courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg")));
                                },
                                width: MediaQuery.of(context).size.width / 2 - 24 - 8),
                            const SizedBox(width: 16),
                            CoursesHalfWidthCell(
                                viewModel: CoursesViewModel(
                                    courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                                    numberOfLessons: "8 уроков",
                                    title: "title",
                                    description: "description"
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const CoursesDetailsScreen(
                                              title: "title",
                                              courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg")));
                                },
                                width: MediaQuery.of(context).size.width / 2 - 24 - 8)
                        ])
                      ]),
                      const SizedBox(height: 24),
                      HeaderSection(
                          title: "Категории курсов", onPressed: () => {}),
                      const SizedBox(height: 16),
                      Row(children: [
                        PresetCard(
                            flex: 327 / 112,
                            image: Assets.coursesMusic.image(),
                            itemHeight: 132,
                            onTap: () => {})
                      ]),
                      const SizedBox(height: 8),
                      Row(children: [
                        PresetCard(
                            flex: 327 / 112,
                            image: Assets.coursesArt.image(),
                            itemHeight: 132,
                            onTap: () => {})
                      ]),
                      const SizedBox(height: 8),
                      Row(children: [
                        PresetCard(
                            flex: 327 / 112,
                            image: Assets.coursesDance.image(),
                            itemHeight: 132,
                            onTap: () => {})
                      ]),
                      const SizedBox(height: 24),
                      HeaderSection(title: "Новые курсы", onPressed: () => {}),
                          Row(children: [
                            CoursesFullWidthCell(
                                viewModel: CoursesViewModel(
                                    courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                                    numberOfLessons: "8 уроков",
                                    title: "title", description: "description"
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const CoursesDetailsScreen(
                                              title: "title",
                                              courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg")));
                                },
                                width: MediaQuery.of(context).size.width - (24 * 2))
                          ]),
                          const SizedBox(height: 16),
                          Row(children: [
                            const SizedBox(height: 16),
                            Row(children: [
                              CoursesHalfWidthCell(
                                  viewModel: CoursesViewModel(
                                      courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                                      numberOfLessons: "8 уроков",
                                      title: "title",
                                      description: "description"
                                  ),
                                  onTap: () { },
                                  width: MediaQuery.of(context).size.width / 2 - 24 - 8),
                              const SizedBox(width: 16),
                              CoursesHalfWidthCell(
                                  viewModel: CoursesViewModel(
                                      courseImageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                                      numberOfLessons: "8 уроков",
                                      title: "title",
                                      description: "description"
                                  ),
                                  onTap: () { },
                                  width: MediaQuery.of(context).size.width / 2 - 24 - 8)
                            ])
                          ]),
                    ])))));
  }

  Widget _verticalCard(Image image) {
    return Expanded(
        flex: 1,
        child: SizedBox(
            height: 246,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              PresetCard(
                  flex: 1, image: image, itemHeight: 156, onTap: () => {}),
              const Text("dsdfsdf",
                  style: TextStyle(fontSize: 14, color: Color(0xFF3C3C3B))),
              const Text("fffffff",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFF121212))),
              const SizedBox(height: 16)
            ])));
  }
}
