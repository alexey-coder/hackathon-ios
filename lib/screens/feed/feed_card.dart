import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard(
      {Key? key,
        this.width = 140,
        required this.onTap})
      : super(key: key);

  final double width;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {

    return Padding(
      // padding: EdgeInsets.only(left: 20),
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: width,
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                  'product',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold)
              ),
              const Text(
                  'ddddd',
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.normal)
              ),
              const Text(
                  'fffff',
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w100)
              ),
              CachedNetworkImage(
                width: 300,
                height: 200,
                imageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                // placeholder: (context, url) => const CircularProgressIndicator(),
                // errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Row(
                  children: const [
                    Icon(Icons.favorite, color: Colors.red, size: 30),
                    Icon(Icons.favorite, color: Colors.red, size: 30),
                    Icon(Icons.favorite, color: Colors.red, size: 30),
                  ]
              ),
              const Divider(
                  color: Colors.black
              )
            ],
          ),
        ),
      ),
    );
  }
}