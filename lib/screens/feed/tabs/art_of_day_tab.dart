import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/carousel.dart';
import 'package:maps/screens/common_widgets/main_button.dart';

class ArtOfDayTab extends StatelessWidget {
  const ArtOfDayTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const SizedBox(height: 24),
      const Carousel(radius: 16, height: 300, urls: [
        "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
        "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
        "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg"
      ]),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const SizedBox(height: 10),
            const Text("date",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("title",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.normal)),
            const Text("subTitle",
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w100)),
            const SizedBox(height: 16),
            MainButton(
                backgroundColor: const Color(0x0F0D1019),
                text: "Читать полностью",
                onPressed: () => {}),
            // AdditionalDetailsList(
            //     title: "Смотрите также",
            //     additionalDetails: provider.detailsList),
            const SizedBox(height: 16),
          ]))
    ]));
  }
}
