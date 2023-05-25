import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/gen/fonts.gen.dart';
import 'package:maps/screens/common_widgets/feed_image.dart';

class AdditionalReadingViewModel {
  final String imageUrl;
  final String autorName;
  final String description;

  AdditionalReadingViewModel(
      {required this.imageUrl,
      required this.autorName,
      required this.description});
}

class ReplyViewModel {
  final String authorImageUrl;
  final String date;
  final String name;
  final String comment;

  ReplyViewModel(
      {required this.authorImageUrl,
      required this.date,
      required this.name,
      required this.comment});
}

class CommentViewModel {
  final String authorImageUrl;
  final String date;
  final String name;
  final String comment;
  final String likesCount;
  final List<ReplyViewModel> replies;

  CommentViewModel(
      {required this.authorImageUrl,
      required this.date,
      required this.name,
      required this.comment,
      required this.likesCount,
      required this.replies});
}

class FeedCardViewModel {
  final String date;
  final String title;
  final String description;
  final String subtitle;
  final String imageUrl;
  final String imageLabel;
  final String likesCount;
  final List<CommentViewModel> comments;
  final List<AdditionalReadingViewModel> additionalReading;

  FeedCardViewModel(
      {required this.date,
      required this.title,
      required this.description,
      required this.subtitle,
      required this.imageUrl,
      required this.imageLabel,
      required this.likesCount,
      required this.comments,
      required this.additionalReading});
}

class FeedCard extends StatelessWidget {
  const FeedCard({Key? key, required this.viewModel, required this.onTap})
      : super(key: key);

  final FeedCardViewModel viewModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Text(viewModel.subtitle,
              style: const TextStyle(
                  fontFamily: FontFamily.deeDee,
                  fontSize: 14,
                  color: Color(0xFF3C3C3B))),
          const SizedBox(height: 8),
          FeedImage(
              imageUrl: viewModel.imageUrl,
              height: 200,
              text: viewModel.imageLabel),
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
                  Text(viewModel.comments.length.toString())
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
                  Text(viewModel.likesCount)
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
