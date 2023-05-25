import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/additional_reading/additional_reading_card.dart';
import 'package:maps/screens/common_widgets/main_title.dart';
import 'package:maps/screens/feed/feed_card.dart';

class AdditionalReadingList extends StatelessWidget {
  const AdditionalReadingList(
      {Key? key, required this.title, required this.viewModels})
      : super(key: key);

  final List<AdditionalReadingViewModel> viewModels;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      MainTitle(text: title),
      const SizedBox(height: 16),
      ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) =>
              AdditionalReadingCard(viewModel: viewModels[index]),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: viewModels.length),
      const SizedBox(height: 32)
    ]);
  }
}
