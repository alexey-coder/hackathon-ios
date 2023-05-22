import 'package:flutter/material.dart';

class SheetProvider extends ChangeNotifier {
  bool searchFocused = false;
  String seachText = '';

  void changeSeachFocused(bool newValue) {
    searchFocused = newValue;
    notifyListeners();
  }

  void changeSearchText(String newValue) {
    seachText = newValue;
    notifyListeners();
  }
}
