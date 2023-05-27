import 'package:flutter/material.dart';

class HorizontalProgress extends StatelessWidget {
  const HorizontalProgress({
    Key? key,
    required this.height,
    required this.width,
    required this.progress
  }) : super(key: key);

  final double height;
  final double width;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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
