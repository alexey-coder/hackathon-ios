import 'package:flutter/foundation.dart';

enum MyTab { main, teaching, courses, map, profile }

class TabProvider extends ChangeNotifier {
  var selectedTab = MyTab.main;

  void changeTab(MyTab newTab) {
    selectedTab = newTab;
    notifyListeners();
  }
}
