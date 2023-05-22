import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/screens/map/organization_type_cell.dart';
import 'package:maps/screens/map/search_text_field.dart';

class MapSheetScren extends StatelessWidget {
  const MapSheetScren({super.key});

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
                              controller: TextEditingController(text: ''))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 16),
                          child: Row(children: [
                            OrganizationTypeCell(
                                image: Assets.musicalSchools.image(),
                                onPressed: () => {print('musical schools')}),
                            const Padding(padding: EdgeInsets.only(left: 8)),
                            OrganizationTypeCell(
                                image: Assets.artSchools.image(),
                                onPressed: () => {print('art schools')}),
                          ])),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 8),
                          child: Row(children: [
                            OrganizationTypeCell(
                                image: Assets.museums.image(),
                                onPressed: () => {print('museums')}),
                            const Padding(padding: EdgeInsets.only(left: 8)),
                            OrganizationTypeCell(
                                image: Assets.exhibitions.image(),
                                onPressed: () => {print('exhibitions')}),
                            const Padding(padding: EdgeInsets.only(left: 8)),
                            OrganizationTypeCell(
                                image: Assets.theaters.image(),
                                onPressed: () => {print('theaters')})
                          ])),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 8),
                          child: Row(children: [
                            FixedOrganizationTypeCell(
                                image: Assets.childrenArtSchools.image(),
                                width: 155,
                                onPressed: () =>
                                    {print('children art schools')}),
                            const Padding(padding: EdgeInsets.only(left: 8)),
                            OrganizationTypeCell(
                                image: Assets.danceSchools.image(),
                                onPressed: () => {print('dance schools')}),
                          ]))
                    ])
                  ])));
        });
  }
}
