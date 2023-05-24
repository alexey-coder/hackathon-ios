import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';
import '../../sheet/organization_type_cell.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var widthWithoutPaddings = MediaQuery.of(context).size.width - 8 * 2;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
        child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 8,
            children: [
              Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size((widthWithoutPaddings / 2) - 4, 160), // Image radius
                        child: Assets.news.image(
                            fit: BoxFit.fitWidth
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size((widthWithoutPaddings / 2) - 4, 160), // Image radius
                        child: Assets.questions.image(
                        fit: BoxFit.fitWidth
                        ),
                      ),
                    )
                  ]),
              ClipRRect(
                borderRadius: BorderRadius.circular(16), // Image border
                child: SizedBox.fromSize(
                  size: Size(widthWithoutPaddings, 130), // Image radius
                  child: Assets.interview.image(
                  fit: BoxFit.fitWidth
                  ),
                ),
              ),
              Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // const Padding(padding: EdgeInsets.only(left: 8)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size((widthWithoutPaddings / 2) - 4, 160), // Image radius
                        child: Assets.wordOfADay.image(fit: BoxFit.fitWidth
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size((widthWithoutPaddings / 2) - 4, 160), // Image radius
                        child: Assets.talant.image(fit: BoxFit.fitWidth
                        ),
                      ),
                    )
                  ]),
              ClipRRect(
                borderRadius: BorderRadius.circular(16), // Image border
                child: SizedBox.fromSize(
                  size: Size(widthWithoutPaddings, 130), // Image radius
                  child: Assets.quiz.image(fit: BoxFit.fitWidth
                  ),
                ),
              ),
              Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size((widthWithoutPaddings / 2) - 4, 160), // Image radius
                        child: Assets.playlist.image(fit: BoxFit.fitWidth
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16), // Image border
                      child: SizedBox.fromSize(
                        size: Size((widthWithoutPaddings / 2) - 4, 160), // Image radius
                        child: Assets.interesting.image(fit: BoxFit.fitWidth
                        ),
                      ),
                    )
                  ],
              ),
            ])
    );
  }
}
