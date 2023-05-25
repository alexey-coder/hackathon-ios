import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maps/gen/fonts.gen.dart';
import 'package:maps/screens/feed/feed_card.dart';

class AdditionalReadingCard extends StatelessWidget {
  const AdditionalReadingCard({Key? key, required this.viewModel})
      : super(key: key);

  final AdditionalReadingViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: CachedNetworkImage(
                width: 62,
                height: 62,
                imageUrl: viewModel.imageUrl,
                fit: BoxFit.fill)),
        const SizedBox(width: 8),
        Flexible(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(viewModel.autorName,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: FontFamily.deeDee,
                  color: Color(0xFF3C3C3B))),
          const SizedBox(height: 5),
          Text(viewModel.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: FontFamily.deeDee,
                  fontSize: 12,
                  color: Color(0xFF3C3C3B))),
        ]))
      ]),
      const SizedBox(height: 16),
      Container(color: const Color(0xFFEDEDED), height: 1)
    ]);
  }
}
