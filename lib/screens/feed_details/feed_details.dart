import 'package:flutter/material.dart';
import 'package:maps/gen/fonts.gen.dart';
import 'package:maps/providers/feed_provider.dart';
import 'package:maps/screens/common_widgets/additional_reading/additional_reading_list.dart';
import 'package:maps/screens/common_widgets/app_bar.dart';
import 'package:maps/screens/common_widgets/feed_image.dart';
import 'package:maps/screens/common_widgets/filter_button.dart';
import 'package:maps/screens/common_widgets/main_button.dart';
import 'package:provider/provider.dart';

class FeedDetailsScreen extends StatelessWidget {
  const FeedDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<FeedProvider>();
    var viewModel = provider.selectedCardViewModel;
    if (viewModel == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: createAppBar(context: context, title: viewModel.imageLabel),
        body: ListView(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                FeedImage(
                    imageUrl: viewModel.imageUrl,
                    height: 300,
                    text: viewModel.imageLabel),
                const SizedBox(height: 16),
                Text(viewModel.date,
                    style: const TextStyle(
                        fontFamily: FontFamily.deeDee,
                        fontSize: 14,
                        color: Color(0xFF7C7C7B))),
                Text(viewModel.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: FontFamily.deeDee)),
                const SizedBox(height: 8),
                Text(viewModel.description,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: FontFamily.deeDee,
                        fontWeight: FontWeight.w400))
              ]),
              const SizedBox(height: 2),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text('56 комментариев',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                FilterButton(onPressed: () => {})
              ]),
              const SizedBox(height: 8),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFD0D0D0)),
                    color: Colors.white,
                  ),
                  constraints: const BoxConstraints(minHeight: 100),
                  child: const TextField(
                      decoration: InputDecoration(
                    hintText: 'Написать комментарий',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                  ))),
              const SizedBox(height: 8),
              MainButton(
                  backgroundColor: const Color(0xFFAFCC46),
                  onPressed: () => {},
                  text: 'Отправить'),
              const SizedBox(height: 16),
              AdditionalReadingList(
                  title: 'Рекомендуем к прочтению',
                  viewModels: viewModel.additionalReading)
            ]));
  }
}
