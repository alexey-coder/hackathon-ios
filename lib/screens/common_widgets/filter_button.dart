import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FilterButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFF9F9F9)),
        child: IconButton(
            color: Colors.black,
            onPressed: onPressed,
            icon: ImageIcon(Assets.settings.image().image, size: 24)));
  }
}
