import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/feed_image.dart';
import 'package:provider/provider.dart';
import '../common_widgets/back_button_with_title.dart';
import 'feed_details_prvider.dart';

class FeedDetailsScreen extends StatelessWidget {
  FeedDetailsScreen(
      {Key? key,
      required this.date,
      required this.title,
      required this.subTitle,
      required this.url})
      : super(key: key);

  String date;
  String title;
  String subTitle;
  String url;

  @override
  Widget build(BuildContext context) {
    // var pro = context.watch<FeedDetailsProvider>()

    return Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BackButtonWithTitle(
              title: 'privet',
              backTap: () {
                Navigator.pop(context);
              }
              ),
                  const Divider(color: Colors.black),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        FeedImage(
                          imageUrl: url,
                          height: 300,
                          text: title,
                          key: null,
                        ),
                        const SizedBox(height: 10),
                        Text(date,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text(title,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.normal)),
                        Text(subTitle,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w100)
                        )
                      ])
                  )
        ]
    )
    )
    );
  }
}
