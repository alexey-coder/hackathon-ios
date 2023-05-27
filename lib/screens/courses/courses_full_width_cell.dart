import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../gen/fonts.gen.dart';

class CoursesViewModel {
  final String courseImageUrl;
  final String numberOfLessons;
  final String title;
  final String description;

  CoursesViewModel(
      {required this.courseImageUrl,
      required this.numberOfLessons,
      required this.title,
      required this.description});
}

class CoursesFullWidthCell extends StatelessWidget {
  const CoursesFullWidthCell(
      {Key? key,
      required this.viewModel,
      required this.width,
      required this.onTap})
      : super(key: key);

  final CoursesViewModel viewModel;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: SizedBox(
            height: 180,
            child: Stack(
              fit: StackFit.loose,
                children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: CachedNetworkImage(
                      width: width,
                      height: 180,
                      imageUrl: viewModel.courseImageUrl,
                      fit: BoxFit.fill)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 26,
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: FittedBox(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 4, bottom: 4),
                              child: Text(viewModel.numberOfLessons,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily: FontFamily.deeDee))))),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Column(children: [
                      Text(viewModel.description,
                          style: const TextStyle(
                              fontFamily: FontFamily.deeDee,
                              fontSize: 14,
                              color: Color(0xFF3C3C3B))),
                      const SizedBox(height: 8),
                      Text(viewModel.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              fontFamily: FontFamily.deeDee)),
                    ]),
                  )
                ],
              ),
            ])));
  }
}
