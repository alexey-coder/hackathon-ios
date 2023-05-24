import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {

  const Carousel({
    Key? key,
    required this.height,
    required this.urls,
    required this.radius
  }) : super(key: key);

  final List<String> urls;
  final double radius;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: height,
          child: PageView.builder(
            itemCount: urls.length,
            controller: PageController(viewportFraction: 0.8),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, itemIndex);
            },
          ),
        )
      ],
    );
  }


  Widget _buildCarouselItem(BuildContext context, int itemIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: CachedNetworkImage(
          width: MediaQuery.of(context).size.width,
          height: height,
          imageUrl: urls[itemIndex],
          fit: BoxFit.fill,
        )
      ),
    );
  }
}
