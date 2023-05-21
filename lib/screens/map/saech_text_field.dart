import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(
            color: const Color(0xFFF9F9F9),
            borderRadius: BorderRadius.circular(8)),
        child: Row(children: [
          const SizedBox(width: 11),
          Assets.search.image(height: 24, width: 24),
          const SizedBox(width: 11),
          Expanded(
              child: TextField(
                  controller: controller,
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                  )))
        ]));
  }
}
