import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: backgroundColor),
        child: TextButton(
            onPressed: onPressed,
            child: Text(text,
                style: const TextStyle(fontSize: 18, color: Colors.black))));
  }
}
