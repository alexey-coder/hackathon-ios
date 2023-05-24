import 'package:flutter/material.dart';
import 'package:maps/gen/fonts.gen.dart';

class SearchRowInfoViewModel {
  final String title;
  final String subtitle;
  final String address;
  final String distance;

  SearchRowInfoViewModel(
      {required this.title,
      required this.subtitle,
      required this.address,
      required this.distance});
}

class SearchRowInfo extends StatelessWidget {
  const SearchRowInfo({Key? key, required this.viewModel}) : super(key: key);

  final SearchRowInfoViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 11),
      Flexible(
          child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(viewModel.title,
                        style: const TextStyle(
                            fontFamily: FontFamily.deeDee,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF121212))),
                    Text(viewModel.subtitle,
                        style: const TextStyle(
                            fontFamily: FontFamily.deeDee,
                            fontSize: 14,
                            color: Color(0xFF3C3C3B))),
                    const SizedBox(height: 4),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(viewModel.address,
                              style: const TextStyle(
                                  fontFamily: FontFamily.deeDee,
                                  fontSize: 12,
                                  color: Color(0xFF3C3C3B))),
                          Text(viewModel.distance,
                              style: const TextStyle(
                                  fontFamily: FontFamily.deeDee,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xFF3C3C3B)))
                        ]),
                    const SizedBox(height: 16),
                    Container(height: 1, color: const Color(0xFFEDEDED))
                  ])))
    ]);
  }
}
