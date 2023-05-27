import 'package:flutter/cupertino.dart';

class CoursesProvider extends ChangeNotifier {
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