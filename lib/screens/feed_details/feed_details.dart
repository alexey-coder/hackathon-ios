import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/additional_details/additional_details_list.dart';
import 'package:maps/screens/common_widgets/back_button_with_title.dart';
import 'package:maps/screens/common_widgets/feed_image.dart';
import 'package:provider/provider.dart';
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
    var provider = context.watch<FeedDetailsProvider>();

    return SafeArea(
        child: Scaffold(
            appBar: BackButtonWithTitle(
                title: 'privet',
                backTap: () {
                  Navigator.pop(context);
                }),
            body: SingleChildScrollView(
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
                        style: const TextStyle(fontWeight: FontWeight.w100)),
                    AdditionalDetailsList(
                        title: "Смотрите также",
                        additionalDetails: provider.detailsList),
                    const SizedBox(height: 16),
                  ],
                ))));
  }
}
