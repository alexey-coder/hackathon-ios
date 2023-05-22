import 'package:flutter/material.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/common_widgets/search_text_field.dart';
import 'package:maps/screens/sheet/shevron.dart';
import 'package:provider/provider.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sheetProvider = context.watch<SheetProvider>();
    return Column(children: [
      const SizedBox(height: 12),
      const Shevron(),
      Padding(
          padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
          child: SearchTextField(
              focused: sheetProvider.searchFocused,
              onFocusChange: sheetProvider.changeSeachFocused,
              onTextChange: sheetProvider.changeSearchText))
    ]);
  }
}
