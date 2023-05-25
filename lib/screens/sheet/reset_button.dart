import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/gen/fonts.gen.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ResetButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(8)),
            child: const Icon(Icons.clear, size: 24, color: Colors.black)));
  }
}

class MapPresetButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const MapPresetButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
            height: 40,
            decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Center(
                    child: Text(title,
                        style: const TextStyle(
                            fontFamily: FontFamily.deeDee,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF121212)))))));
  }
}
