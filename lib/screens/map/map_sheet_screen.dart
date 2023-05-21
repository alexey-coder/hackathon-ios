import 'package:flutter/material.dart';
import 'package:maps/screens/map/search_text_field.dart';

class MapSheetScren extends StatelessWidget {
  const MapSheetScren({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        minChildSize: 0.1,
        initialChildSize: 0.11,
        maxChildSize: 0.4,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Row(children: [
                            const Spacer(),
                            Container(
                                width: 37,
                                height: 4,
                                decoration: const BoxDecoration(
                                    color: Color(0xFF7C7C7B),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100)))),
                            const Spacer()
                          ])),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 24, right: 24),
                          child: SearchTextField(
                              controller: TextEditingController(text: '')))
                    ])
                  ])));
        });
  }
}
