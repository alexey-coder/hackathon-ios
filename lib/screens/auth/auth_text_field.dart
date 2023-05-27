import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {Key? key, required this.hintText, required this.onTextChange})
      : super(key: key);

  final String hintText;
  final void Function(String) onTextChange;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFD0D0D0)),
            color: Colors.white),
        constraints: const BoxConstraints(minHeight: 56),
        child: TextField(
            onChanged: onTextChange,
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(16))));
  }
}
