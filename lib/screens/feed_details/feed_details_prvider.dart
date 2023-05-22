import 'package:flutter/material.dart';
import '../common_widgets/additional_details/additional_details_model.dart';

final List<AdditionalDetailsModel> randomDetailsList = List.generate(
    6,
        (index) => AdditionalDetailsModel(
        topTitle: "111",
        middleTitle: "222",
        bottomTitle: "444",
        url: "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg"
    ));


class FeedDetailsProvider with ChangeNotifier {
  final List<AdditionalDetailsModel> _detailsList = randomDetailsList;
  List<AdditionalDetailsModel> get detailsList => _detailsList;
}
