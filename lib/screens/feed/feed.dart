import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'feed_card.dart';
import 'feed_provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var movies = context.watch<FeedProvider>().movies;

    return Scaffold(
        appBar: AppBar(title: const Text('App bar')),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: 'Search',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: Container(
                              padding: const EdgeInsets.all(15),
                              width: 18,
                              child: const Icon(Icons.search)))),
                  Expanded(
                      child: ListView.builder(
                          itemCount: movies.length,
                          itemBuilder: (_, index) {
                            return FeedCard(
                                width: MediaQuery.of(context).size.width,
                                onTap: () {});
                          }))
                ])));
  }
}
