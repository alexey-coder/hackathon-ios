import 'package:flutter/material.dart';

class SheetProvider extends ChangeNotifier {
  bool searchFocused = false;
  String searchText = '';

  void changeSeachFocused(bool newValue) {
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
