import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'additional_details_model.dart';

class AdditionalDetailsCard extends StatelessWidget {

  const AdditionalDetailsCard({
    Key? key,
    required this.additionalDetailsModel
  }) : super(key: key);

  final AdditionalDetailsModel additionalDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            width: 63,
            height: 63,
            imageUrl: additionalDetailsModel.url,
            fit: BoxFit.fill,
          )
      ),
      const SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              additionalDetailsModel.topTitle,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(
              additionalDetailsModel.middleTitle,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.normal)),
          Text(
              additionalDetailsModel.bottomTitle,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w100)
          )
      ])
    ]);
  }
}
