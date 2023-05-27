import 'package:flutter/cupertino.dart';

import 'courses_details_table_of_content.dart';

class CoursesDetailsProvider with ChangeNotifier {
  List<TableOfContentViewModel> tableOfContentViewModels = [
    TableOfContentViewModel(title: "title", duration: "60min", number: "some number"),
    TableOfContentViewModel(title: "title", duration: "60min", number: "some number"),
    TableOfContentViewModel(title: "title", duration: "60min", number: "some number")
  ];
}