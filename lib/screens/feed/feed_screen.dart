import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../common_widgets/search_text_field.dart';
import 'feed_card.dart';
import 'feed_provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var feedProvider = context.watch<FeedProvider>();

    return Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 26),
                  const Divider(color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: SearchTextField(
                        controller: TextEditingController(text: feedProvider.searchText),
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
                                width: MediaQuery.of(context).size.width,
                                onTap: () {});
                          }))
                ])));
  }
}
