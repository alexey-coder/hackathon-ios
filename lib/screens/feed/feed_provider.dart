import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'feed_dto.dart';

final List<FeedDTO> initialData = List.generate(
    20,
    (index) => FeedDTO(
        title: "Moview $index",
        runtime: "${Random().nextInt(100) + 60} minutes"));

class FeedProvider with ChangeNotifier {
  // All movies (that will be displayed on the Home screen)
  final List<FeedDTO> _movies = initialData;

  // Retrieve all movies
  List<FeedDTO> get movies => _movies;

  // Favorite movies (that will be shown on the MyList screen)
  final List<FeedDTO> _searchList = [];

  // Retrieve favorite movies
  List<FeedDTO> get searchList => _searchList;

  // Adding a movie to the favorites list
  void addToList(FeedDTO movie) {
    _searchList.add(movie);
    notifyListeners();
  }

  // Removing a movie from the favorites list
  void removeFromList(FeedDTO movie) {
    _searchList.remove(movie);
    notifyListeners();
  }
}
