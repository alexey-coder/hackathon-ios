import 'package:flutter/material.dart';
import 'package:maps/providers/text_field_provider.dart';
import 'package:maps/screens/map/search_text_field.dart';
import 'package:maps/screens/sheet/shevron.dart';
import 'package:provider/provider.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sheedProvider = context.watch<SheetProvider>();
    return Column(children: [
      const SizedBox(height: 12),
      const Shevron(),
      Padding(
          padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
          child: SearchTextField(
              controller: TextEditingController(text: ''),
              focused: sheedProvider.searchFocused,
              onFocusChange: (newValue) =>
                  {sheedProvider.changeSeachFocused(newValue)}))
    ]);
  }
}
