import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';
import '../common_widgets/feed_image.dart';

class FeedCard extends StatelessWidget {
  const FeedCard(
      {Key? key,
        required this.width,
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
              FeedImage(
                imageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                height: 200,
                text: "aaaa",
                key: null,
              ),
              const SizedBox(height: 8),
              Row(
                  children: [
                    SizedBox(
                        width: 18,
                        height: 18,
                        child: Image(
                            image: Assets.chat.image().image,
                            fit: BoxFit.fitWidth
                        ),
                    ),
                    const SizedBox(width: 8),
                    const Text('12'),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image(
                          image: Assets.heart.image().image,
                          fit: BoxFit.fitWidth
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text('12'),
                    const Spacer(),
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image(
                          image: Assets.bookmark.image().image,
                          fit: BoxFit.fitWidth
                      ),
                    ),
                    const SizedBox(width: 8)
                  ],
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