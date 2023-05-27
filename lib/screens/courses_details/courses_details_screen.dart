import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../gen/assets.gen.dart';
import '../common_widgets/app_bar.dart';
import '../common_widgets/progress.dart';
import 'courses_details_provider.dart';
import 'courses_details_table_of_content.dart';

class CoursesDetailsScreen extends StatelessWidget {
  const CoursesDetailsScreen(
      {Key? key, required this.title, required this.courseImageUrl})
      : super(key: key);

  final String title;
  final String courseImageUrl;

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<CoursesDetailsProvider>();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: createAppBar(context: context, title: title),
        body: ListView(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                topWidget(),
                const SizedBox(height: 16),
                const Text("data",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromRGBO(124, 124, 123, 1))),
                const SizedBox(height: 6),
                const Text("data2",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color.fromRGBO(18, 18, 18, 1))),
                const SizedBox(height: 24),
                descriptionWidget(),
                const SizedBox(height: 16),
                freeCourseWidget(),
                const SizedBox(height: 32),
                CoursesDetailsTableOfContent(
                  title: "Программа курса",
                  viewModels: provider.tableOfContentViewModels)
              ])
            ]));
  }

  Widget topWidget() {
    return SizedBox(
        height: 200,
        child: Stack(fit: StackFit.loose, children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: CachedNetworkImage(
                  width: double.infinity,
                  height: 180,
                  imageUrl: courseImageUrl,
                  fit: BoxFit.fill)),
          const Spacer(),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 63,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color.fromRGBO(249, 249, 249, 1)),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ататат",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF3C3C3B))),
                        SizedBox(height: 5),
                        HorizontalProgress(
                            progress: 0.5, width: double.infinity, height: 9)
                      ])))
        ]));
  }

  Widget descriptionWidget() {
    return Container(
        height: 173,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromRGBO(249, 249, 249, 1)),
        child:
            const Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Flexible(
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("tatitleeee",
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color.fromRGBO(18, 18, 18, 1))),
                        SizedBox(height: 8),
                        Text(
                            "Курс Думай вою творчеsadfsafd sa fsa fdскуsfdsdfg sdfgdsfgdsfg sadfsadfsafdличные стратегии и методы, которые помогут вам д",
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(60, 60, 59, 1))),
                        SizedBox(height: 6),
                        Text("vifasdfsafdsafdbel",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(18, 18, 18, 1)))
                      ])))
        ]));
  }

  Widget freeCourseWidget() {
    return Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromRGBO(217, 229, 166, 1)
    ),
        child: Flexible(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.championcup.image(width: 36, height: 39),
                      const SizedBox(height: 4),
                      const Text(
                          "vifasdfsafdsafdbel",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(18, 18, 18, 1)))
                    ]))));
  }
}
