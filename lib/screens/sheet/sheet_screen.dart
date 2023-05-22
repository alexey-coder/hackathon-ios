import 'package:flutter/material.dart';
import 'package:maps/screens/sheet/presets_container.dart';
import 'package:maps/screens/sheet/sheet_header.dart';

class SheetScreen extends StatelessWidget {
  const SheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        minChildSize: 0.1,
        initialChildSize: 0.105,
        maxChildSize: 0.57,
        snapSizes: const [0.1, 0.57],
        snap: true,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(children: [const SheetHeader(), buildBody()])));
        });
  }

  Widget buildBody() {
    return const Padding(
        padding: EdgeInsets.only(top: 16), child: PresetsContainer());
  }
}
