import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {Key? key,
      required this.passwordHidden,
      required this.hintText,
      required this.onTextChange,
      required this.onPasswordHiddenChange})
      : super(key: key);

  final bool passwordHidden;
  final String hintText;
  final void Function(String) onTextChange;
  final VoidCallback onPasswordHiddenChange;

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
            obscureText: passwordHidden,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: onPasswordHiddenChange,
                    icon: passwordHidden
                        ? Assets.passwordHidden.image()
                        : Assets.passwordShown.image()),
                hintText: hintText,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(16))));
  }
}
