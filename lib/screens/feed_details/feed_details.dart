import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/feed_image.dart';
import 'package:provider/provider.dart';
import 'feed_details_prvider.dart';

class FeedDetailsScreen extends StatelessWidget {
  const FeedDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var pro = context.watch<FeedDetailsProvider>();

    return Scaffold(
        appBar: AppBar(title: const Text('App bar')),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: FeedImage(
                        imageUrl: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                        height: 300,
                        text: "text",
                        key: null,
                      )
                  )])));
  }
}
