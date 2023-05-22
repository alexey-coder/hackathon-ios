import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeedImage extends StatelessWidget {

  FeedImage({
    required Key? key,
    required this.imageUrl,
    required this.height,
    required this.text
  }) : super(key: key);

  double height;
  String imageUrl;
  String text;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            width: MediaQuery.of(context).size.width,
            height: height,
            imageUrl: imageUrl,
            fit: BoxFit.fill,
          )
      ),
      Align(alignment: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.all(10.0),
          width: 50,
          height: 26,
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          child: Center(child: Text(text)),
        ),
      )
    ]);
  }
}
