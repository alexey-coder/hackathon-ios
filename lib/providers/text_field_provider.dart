import 'package:flutter/material.dart';

class SheetProvider extends ChangeNotifier {
  bool searchFocused = false;

  void changeSeachFocused(bool newValue) {
    searchFocused = newValue;
    notifyListeners();
  }
}
