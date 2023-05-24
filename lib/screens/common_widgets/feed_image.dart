import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maps/gen/fonts.gen.dart';

class FeedImage extends StatelessWidget {
  const FeedImage(
      {Key? key,
      required this.imageUrl,
      required this.height,
      required this.text})
      : super(key: key);

  final double height;
  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
              width: MediaQuery.of(context).size.width,
              height: height,
              imageUrl: imageUrl,
              fit: BoxFit.fill)),
      Align(
          alignment: Alignment.topLeft,
          child: Container(
              height: 26,
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: FittedBox(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 4, bottom: 4),
                      child: Text(text,
                          style: const TextStyle(
                              fontSize: 12, fontFamily: FontFamily.deeDee))))))
    ]);
  }
}
