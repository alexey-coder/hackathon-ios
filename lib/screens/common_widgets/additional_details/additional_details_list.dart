import 'package:flutter/material.dart';
import '../main_title.dart';
import 'additional_details_card.dart';
import 'additional_details_model.dart';

class AdditionalDetailsList extends StatelessWidget {
  const AdditionalDetailsList({Key? key, required this.additionalDetails})
      : super(key: key);

  final List<AdditionalDetailsModel> additionalDetails;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const SizedBox(height: 32),
      MainTitle(title: 'privet'),
          const SizedBox(height: 8),
          ListView.separated(
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                return AdditionalDetailsCard(
                  additionalDetailsModel: additionalDetails[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: additionalDetails.length
          )
    ]);
  }
}
