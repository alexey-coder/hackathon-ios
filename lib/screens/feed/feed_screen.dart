import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:maps/screens/feed/tabs/art_of_day_tab.dart';
import 'package:maps/screens/feed/tabs/categories_tab.dart';
import 'package:maps/screens/feed/tabs/feed_tab.dart';
import 'package:provider/provider.dart';
import 'feed_provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var feedProvider = context.watch<FeedProvider>();

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Column(
                children: <Widget>[
                  Container(
                    constraints: const BoxConstraints(maxHeight: 120.0),
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.8))
                    ),
                    child: const Material(
                      color: Colors.white,
                      child: TabBar(
                          tabs: [
                            Tab(text: "Лента"),
                            Tab(text: "Рубрики"),
                            Tab(text: "Искусство дня"),
                          ],
                          labelColor: Colors.black,
                          indicatorColor: Colors.yellow
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        FeedTab(feedProvider: feedProvider),
                        const CategoriesTab(),
                        const ArtOfDayTab()
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}