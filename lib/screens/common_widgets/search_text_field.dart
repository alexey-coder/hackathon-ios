import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/localization.dart';

class SearchTextField extends StatelessWidget {
  final bool focused;
  final Function(bool newValue) onFocusChange;
  final Function(String newValue) onTextChange;

  const SearchTextField(
      {Key? key,
      required this.focused,
      required this.onFocusChange,
      required this.onTextChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(
            color: const Color(0xFFF9F9F9),
            border: focused ? Border.all(color: const Color(0xFFAFCC46)) : null,
            borderRadius: BorderRadius.circular(8)),
        child: Row(children: [
          const SizedBox(width: 11),
          Assets.search.image(height: 24, width: 24),
          const SizedBox(width: 11),
          Expanded(
              child: Focus(
                  onFocusChange: onFocusChange,
                  child: TextField(
                      onChanged: onTextChange,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText:
                            Localization.shared.locale.search_by_organizations,
                        border: InputBorder.none,
                        isDense: true,
                      ))))
        ]));
  }
}
