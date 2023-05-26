import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/screens/common_widgets/preset_card.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Wrap(runSpacing: 8, children: [
          Row(children: [
            PresetCard(
                flex: 1,
                image: Assets.news.image(fit: BoxFit.fill),
                itemHeight: 166,
                onTap: () => {}),
            const SizedBox(width: 8),
            PresetCard(
                flex: 1,
                image: Assets.questionsPng.image(fit: BoxFit.fill),
                itemHeight: 166,
                onTap: () => {})
          ]),
          Row(children: [
            PresetCard(
                flex: 327 / 132,
                image: Assets.interview.image(),
                itemHeight: 132,
                onTap: () => {})
          ]),
          Row(children: [
            PresetCard(
                flex: 1,
                image: Assets.wordOfADay.image(fit: BoxFit.fill),
                itemHeight: 166,
                onTap: () => {}),
            const SizedBox(width: 8),
            PresetCard(
                flex: 1,
                image: Assets.talant.image(fit: BoxFit.fill),
                itemHeight: 166,
                onTap: () => {})
          ]),
          Row(children: [
            PresetCard(
                flex: 327 / 132,
                image: Assets.quiz.image(),
                itemHeight: 166,
                onTap: () => {})
          ]),
          Row(children: [
            PresetCard(
                flex: 1,
                image: Assets.playlist.image(fit: BoxFit.fill),
                itemHeight: 166,
                onTap: () => {}),
            const SizedBox(width: 8),
            PresetCard(
                flex: 1,
                image: Assets.interesting.image(fit: BoxFit.fill),
                itemHeight: 166,
                onTap: () => {})
          ])
        ]));
  }
}

class CategoryCell extends StatelessWidget {
  final Image image;
  final void Function()? onPressed;

  const CategoryCell({required this.image, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            onTap: () => {onPressed?.call()},
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: AspectRatio(aspectRatio: 1.0, child: image)));
  }
}

class SingleCategoryCell extends StatelessWidget {
  final Image image;
  final void Function()? onPressed;

  const SingleCategoryCell(
      {required this.image, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {onPressed?.call()},
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: image);
  }
}
