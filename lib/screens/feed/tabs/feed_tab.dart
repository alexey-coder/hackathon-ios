import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/search_text_field.dart';
import 'package:maps/screens/feed/feed_card.dart';
import 'package:maps/providers/feed_provider.dart';
import 'package:maps/screens/feed_details/feed_details.dart';
import 'package:provider/provider.dart';

class FeedTab extends StatelessWidget {
  const FeedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var feedProvider = context.read<FeedProvider>();
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
          child: SearchTextField(
              controller: TextEditingController(text: feedProvider.searchText),
              focused: feedProvider.searchFocused,
              onFocusChange: feedProvider.changeSearchFocused,
              onTextChange: feedProvider.changeSearchText,
              onResetText: feedProvider.resetText)),
      Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: feedProvider.feeds.length,
              itemBuilder: (_, index) {
                return FeedCard(
                    onTap: () {
                      feedProvider
                          .selectCardViewModel(feedProvider.feeds[index]);
                      // TODO: - Route with name
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FeedDetailsScreen()));
                    },
                    viewModel: feedProvider.feeds[index]);
              }))
    ]);
  }
}
