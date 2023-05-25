import 'package:flutter/material.dart';

class PresetCard extends StatelessWidget {
  final double flex;
  final Image image;
  final double itemHeight;
  final VoidCallback onTap;

  const PresetCard(
      {super.key,
      required this.flex,
      required this.image,
      required this.itemHeight,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex.toInt(),
        child: InkWell(
            onTap: () => {onTap.call()},
            child: AspectRatio(
                aspectRatio: flex,
                child: SizedBox(height: itemHeight, child: image))));
  }
}
