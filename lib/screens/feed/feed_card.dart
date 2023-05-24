import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/gen/fonts.gen.dart';
import 'package:maps/screens/common_widgets/feed_image.dart';

class FeedCardViewModel {
  final String date;
  final String title;
  final String subtitle;
  final String imageUrl;
  final String imageLabel;
  final String commentsCount;
  final String likesCount;

  final VoidCallback onTap;

  FeedCardViewModel(
      {required this.date,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.imageLabel,
      required this.commentsCount,
      required this.likesCount,
      required this.onTap});
}

class FeedCard extends StatelessWidget {
  const FeedCard({Key? key, required this.viewModel}) : super(key: key);

  final FeedCardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: viewModel.onTap,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 16),
          const Text('03.04.2021 15:37',
              style: TextStyle(
                  fontFamily: FontFamily.deeDee,
                  fontSize: 14,
                  color: Color(0xFF7C7C7B))),
          const Text('Екатерина Ганелина',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: FontFamily.deeDee)),
          const SizedBox(height: 8),
          const Text(
              'Известный российский концертмейстер, постоянный концертмейстер народной артистки России Хиблы Герзмава.',
              style: TextStyle(
                  fontFamily: FontFamily.deeDee,
                  fontSize: 14,
                  color: Color(0xFF3C3C3B))),
          const SizedBox(height: 8),
          const FeedImage(
              imageUrl:
                  "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
              height: 200,
              text: "Интервью"),
          const SizedBox(height: 8),
          Row(children: [
            Wrap(
                spacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  SizedBox(
                      width: 24,
                      height: 24,
                      child: Image(image: Assets.comment.image().image)),
                  const Text('12')
                ]),
            const SizedBox(width: 16),
            Wrap(
                spacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  SizedBox(
                      width: 24,
                      height: 24,
                      child: Image(image: Assets.heart.image().image)),
                  const Text('5')
                ]),
            const Spacer(),
            SizedBox(
                width: 24,
                height: 24,
                child: Image(image: Assets.bookmark.image().image))
          ]),
          const SizedBox(height: 24),
          const Divider(color: Colors.black)
        ]));
  }
}
