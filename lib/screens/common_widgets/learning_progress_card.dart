import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';

class LearningProgressCardViewModel {
  final String imageUrl;
  final String smallLabel;
  final String bigLabel;
  final String progressTitle;
  final double progress;

  LearningProgressCardViewModel(
      {required this.imageUrl,
        required this.smallLabel,
        required this.bigLabel,
        required this.progress,
        required this.progressTitle
      });
}

class LearningProgressCard extends StatelessWidget {
  const LearningProgressCard({Key? key, required this.viewModel}) : super(key: key);

  final LearningProgressCardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 113,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromRGBO(249, 249, 249, 1),
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: CachedNetworkImage(
                width: 97,
                height: 97,
                imageUrl: viewModel.imageUrl,
                fit: BoxFit.fill)),
        const SizedBox(width: 8),
        Flexible(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(viewModel.smallLabel,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: FontFamily.deeDee,
                      color: Color(0xFF3C3C3B))),
              const SizedBox(height: 5),
              Text(viewModel.bigLabel,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: FontFamily.deeDee,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xFF3C3C3B))),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      viewModel.smallLabel,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: FontFamily.deeDee,
                          color: Color.fromRGBO(60, 60, 59, 1)
              )),
                  const SizedBox(height: 4),
                  _createProgress(progress: 0.5)
                ],
              )
            ])),
      ]));
  }

  Container _createProgress({required double progress}) {
    return Container(
      width: double.infinity,
      height: 9,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: LinearProgressIndicator(
          value: progress,
          valueColor: const AlwaysStoppedAnimation<Color>(
              Color.fromRGBO(175, 204, 70, 1)
        ),
          backgroundColor: const Color.fromRGBO(237, 237, 237, 1),
        ),
      ),
    );
  }
}

