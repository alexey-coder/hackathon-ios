import 'package:flutter/material.dart';
import 'package:maps/screens/map/search_text_field.dart';
import 'package:maps/screens/sheet/shevron.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 12),
      const Shevron(),
      Padding(
          padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
          child: SearchTextField(controller: TextEditingController(text: '')))
    ]);
  }
}
