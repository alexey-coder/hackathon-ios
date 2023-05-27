import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../gen/fonts.gen.dart';
import 'courses_full_width_cell.dart';

class CoursesHalfWidthCell extends StatelessWidget {
  const CoursesHalfWidthCell(
      {Key? key,
      required this.viewModel,
      required this.width,
      required this.onTap})
      : super(key: key);

  final CoursesViewModel viewModel;
  final double width;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: width,
            height: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Stack(
                fit: StackFit.loose,
                  children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: CachedNetworkImage(
                        width: width,
                        height: 156,
                        imageUrl: viewModel.courseImageUrl,
                        fit: BoxFit.fill)),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
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
                                        fontFamily: FontFamily.deeDee))))))
              ]),
              const SizedBox(height: 8),
              Container(
                // margin: const EdgeInsets.all(8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
            ])));
  }
}
