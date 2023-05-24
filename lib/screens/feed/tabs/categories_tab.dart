import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';
import '../../sheet/organization_type_cell.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 8),
        child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 8,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size(MediaQuery.of(context).size.width / 2, 160), // Image radius
                        child: Assets.news.image(),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size(MediaQuery.of(context).size.width / 2, 160), // Image radius
                        child: Assets.questions.image(),
                      ),
                    )
                  ]),
              ClipRRect(
                borderRadius: BorderRadius.circular(16), // Image border
                child: SizedBox.fromSize(
                  size: Size(MediaQuery.of(context).size.width, 130), // Image radius
                  child: Assets.interview.image(),
                ),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // const Padding(padding: EdgeInsets.only(left: 8)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size(MediaQuery.of(context).size.width / 2, 160), // Image radius
                        child: Assets.wordOfADay.image(),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size(MediaQuery.of(context).size.width / 2, 160), // Image radius
                        child: Assets.talant.image(),
                      ),
                    )
                  ]),
              ClipRRect(
                borderRadius: BorderRadius.circular(16), // Image border
                child: SizedBox.fromSize(
                  size: Size(MediaQuery.of(context).size.width, 130), // Image radius
                  child: Assets.quiz.image(),
                ),
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size(MediaQuery.of(context).size.width / 2, 160), // Image radius
                        child: Assets.playlist.image(),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size(MediaQuery.of(context).size.width / 2, 160), // Image radius
                        child: Assets.interesting.image(),
                      ),
                    )
                  ],
              ),
            ])
    );
  }
}
