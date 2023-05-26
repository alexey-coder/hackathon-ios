import 'package:flutter/material.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/common_widgets/filter_button.dart';
import 'package:maps/screens/common_widgets/search_text_field.dart';
import 'package:maps/screens/sheet/reset_button.dart';
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
      Column(children: [
        Padding(
            padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
            child: Row(children: [
              Expanded(
                  child: SearchTextField(
                      controller:
                          TextEditingController(text: sheetProvider.searchText),
                      focused: sheetProvider.searchFocused,
                      onFocusChange: sheetProvider.changeSeachFocused,
                      onTextChange: sheetProvider.changeSearchText,
                      onResetText: sheetProvider.resetText)),
              if (!sheetProvider.searchFocused &&
                  sheetProvider.searchText.isNotEmpty)
                Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: ResetButton(onPressed: sheetProvider.resetText))
            ])),
        if (sheetProvider.searchText.isNotEmpty && !sheetProvider.searchFocused)
          Column(children: [
            Padding(
                padding: const EdgeInsets.only(top: 12, left: 24),
                child: Row(children: [
                  Wrap(spacing: 8, children: [
                    FilterButton(onPressed: () => {}),
                    MapPresetButton(onPressed: () => {}, title: 'Рядом'),
                    MapPresetButton(onPressed: () => {}, title: 'Открыто')
                  ])
                ])),
            const SizedBox(height: 7),
            Container(color: const Color(0xFFEDEDED), height: 1)
          ])
      ])
    ]);
  }
}
