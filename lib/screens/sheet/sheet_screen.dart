import 'package:flutter/material.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/sheet/presets_container.dart';
import 'package:maps/screens/sheet/search_row.dart';
import 'package:maps/screens/sheet/sheet_header.dart';
import 'package:provider/provider.dart';

class SheetScreen extends StatelessWidget {
  SheetScreen({super.key});

  final controller = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    var sheedProvider = context.watch<SheetProvider>();
    if (controller.isAttached) {
      sheedProvider.searchFocused
          ? openSheet(sheedProvider)
          : hideSheet(sheedProvider);
    }
    return DraggableScrollableSheet(
        controller: controller,
        minChildSize: 0.1,
        initialChildSize: 0.1,
        maxChildSize: 0.9,
        snap: true,
        snapSizes: const [0.1, 0.6, 0.9],
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  controller: scrollController,
                  child: Column(children: [
                    const SheetHeader(),
                    buildBody(sheedProvider, scrollController)
                  ])));
        });
  }

  void openSheet(SheetProvider provider) {
    controller.animateTo(provider.searchText.isEmpty ? 0.8 : 0.95,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  void hideSheet(SheetProvider provider) {
    if (provider.searchText.isEmpty) {
      controller.animateTo(0.1,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  Widget buildBody(SheetProvider provider, ScrollController scrollController) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(children: [
          const SizedBox(height: 16),
          if (provider.searchText.isEmpty)
            const PresetsContainer()
          else
            const Column(children: [SearchRow(), SearchRow(), SearchRow()])
        ]));
  }
}
