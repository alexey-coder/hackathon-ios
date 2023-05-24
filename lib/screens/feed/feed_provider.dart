import 'package:flutter/cupertino.dart';
import 'feed_dto.dart';

final List<FeedDTO> initialData =
    List.generate(20, (index) => FeedDTO(title: "Moview $index"));

class FeedProvider with ChangeNotifier {
  final List<FeedDTO> _feeds = initialData;
  List<FeedDTO> get feeds => _feeds;

  final List<FeedDTO> _searchList = [];
  List<FeedDTO> get searchList => _searchList;

  // Search
  bool searchFocused = false;
  String searchText = '';

  void changeSearchFocused(bool newValue) {
    searchFocused = newValue;
    notifyListeners();
  }

  void changeSearchText(String newValue) {
    searchText = newValue;
    notifyListeners();
  }

  void resetText() {
    changeSearchText('');
  }
}
