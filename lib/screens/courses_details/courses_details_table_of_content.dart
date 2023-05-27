import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import '../common_widgets/main_title.dart';
import '../courses_video_lesson/courses_video_lesson.dart';

class CoursesDetailsTableOfContent extends StatelessWidget {
  const CoursesDetailsTableOfContent(
      {Key? key, required this.title, required this.viewModels})
      : super(key: key);

  final String title;
  final List<TableOfContentViewModel> viewModels;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      MainTitle(text: title),
      const SizedBox(height: 16),
      ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) =>
              TableOfContentCell(viewModel: viewModels[index], onPressed: () {
                Navigator.push(
                    context,
                MaterialPageRoute(
                    builder: (context) => CoursesVideoLesson())
                );
              }),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: viewModels.length),
      const SizedBox(height: 32)
    ]);
  }
}

class TableOfContentViewModel {
  final String title;
  final String number;
  final String duration;

  TableOfContentViewModel(
      {required this.title, required this.number, required this.duration});
}

class TableOfContentCell extends StatelessWidget {
  const TableOfContentCell({
    Key? key,
    required this.viewModel,
    required this.onPressed
  }) : super(key: key);

  final TableOfContentViewModel viewModel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Column(children: [
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
       Assets.bookStack.image(width: 62, height: 62, fit: BoxFit.fill),
        const SizedBox(width: 8),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
              children: [
            Text(viewModel.number,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: FontFamily.deeDee,
                    color: Color(0xFF3C3C3B))),
            Text(viewModel.duration,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: FontFamily.deeDee,
                    color: Color.fromRGBO(124, 124, 123, 1))),
          ]),
          const SizedBox(height: 5),
          Text(viewModel.title,
              style: const TextStyle(
                  fontFamily: FontFamily.deeDee,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF3C3C3B))),
        ])
      ]),
      const SizedBox(height: 16),
      Container(color: const Color(0xFFEDEDED), height: 1)
    ]));
  }
}
