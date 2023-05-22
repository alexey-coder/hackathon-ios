import 'package:flutter/material.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/sheet/presets_container.dart';
import 'package:maps/screens/sheet/sheet_header.dart';
import 'package:provider/provider.dart';

class SheetScreen extends StatelessWidget {
  SheetScreen({super.key});

  final controller = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    var sheedProvider = context.watch<SheetProvider>();
    if (controller.isAttached) {
      sheedProvider.searchFocused ? openSheet() : hideSheet();
    }
    return DraggableScrollableSheet(
        controller: controller,
        minChildSize: 0.1,
        initialChildSize: 0.1,
        maxChildSize: 0.8,
        snap: true,
        snapSizes: const [0.1, 0.6],
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
                    buildBody(sheedProvider)
                  ])));
        });
  }

  void openSheet() {
    controller.animateTo(0.8,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  void hideSheet() {
    controller.animateTo(0.1,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  Widget buildBody(SheetProvider provider) {
    return Column(children: [
      const SizedBox(height: 16),
      if (provider.seachText.isEmpty)
        const PresetsContainer()
      else
        const Text('123')
    ]);
  }
}
