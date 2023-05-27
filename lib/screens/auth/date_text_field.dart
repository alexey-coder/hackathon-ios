import 'package:flutter/material.dart';

class DateTextField extends StatelessWidget {
  const DateTextField(
      {Key? key,
      required this.hintText,
      this.dateText,
      required this.onFocusTextField})
      : super(key: key);

  final String? dateText;
  final String hintText;
  final VoidCallback onFocusTextField;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFD0D0D0)),
            color: Colors.white),
        constraints: const BoxConstraints(minHeight: 56),
        child: TextField(
            readOnly: true,
            controller: TextEditingController(text: dateText),
            onTap: onFocusTextField,
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(16))));
  }
}
