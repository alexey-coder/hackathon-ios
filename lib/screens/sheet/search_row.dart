import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/gen/fonts.gen.dart';

class SearchRowViewModel {
  final String text;

  SearchRowViewModel({required this.text});
}

class SearchRow extends StatelessWidget {
  const SearchRow({Key? key, required this.viewModel}) : super(key: key);

  final SearchRowViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 3),
      Assets.search
          .image(width: 24, height: 24, color: const Color(0xFF7C7C7B)),
      const SizedBox(width: 11),
      Flexible(
          child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(viewModel.text,
                  style: const TextStyle(
                      fontFamily: FontFamily.deeDee,
                      fontSize: 14,
                      color: Color(0xFF121212)))))
    ]);
  }
}
