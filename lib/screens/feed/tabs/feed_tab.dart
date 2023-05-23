import 'package:flutter/material.dart';
import 'package:maps/screens/feed/feed_provider.dart';
import '../../common_widgets/search_text_field.dart';
import '../../feed_details/feed_details.dart';
import '../feed_card.dart';

class FeedTab extends StatelessWidget {

  FeedTab({Key? key, required this.feedProvider}) : super(key: key);

  FeedProvider feedProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(16),
                      child: SearchTextField(
                          controller: TextEditingController(
                              text: feedProvider.searchText),
                          focused: feedProvider.searchFocused,
                          onFocusChange: feedProvider.changeSearchFocused,
                          onTextChange: feedProvider.changeSearchText,
                          onResetText: feedProvider.resetText
                      )
                  ),
                  Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: feedProvider.feeds.length,
                          itemBuilder: (_, index) {
                            return FeedCard(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                onTap: () {
                                  var details = FeedDetailsScreen(
                                    title: "333",
                                    subTitle: "2222",
                                    url: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                                    date: '22.33..22',
                                  );
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (
                                          context) => details)
                                  );
                                });
                          }))
                ]);
  }
}
