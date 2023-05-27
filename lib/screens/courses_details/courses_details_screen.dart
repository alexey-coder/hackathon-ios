import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../common_widgets/app_bar.dart';
import '../common_widgets/progress.dart';

class CoursesDetailsScreen extends StatelessWidget {
  const CoursesDetailsScreen({
    Key? key,
    required this.title,
    required this.courseImageUrl
  }) : super(key: key);

  final String title;
  final String courseImageUrl;

  @override
  Widget build(BuildContext context) {
    // var provider = context.watch<CoursesDetailsProvider>();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: createAppBar(context: context, title: title),
        body: ListView(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    top()
                    ]
              )
            ]));
  }

  Widget top() {
    return SizedBox(
        height: 200,
        child: Stack(
            fit: StackFit.loose,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: CachedNetworkImage(
            width: double.infinity,
            height: 180,
            imageUrl: courseImageUrl,
            fit: BoxFit.fill)),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomCenter,
                child: HorizontalProgress(progress: 0.5, width: double.infinity, height: 9)
              )
    ]));
  }
}

