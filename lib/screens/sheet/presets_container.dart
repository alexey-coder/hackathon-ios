import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/sheet/organization_type_cell.dart';
import 'package:provider/provider.dart';

class PresetsContainer extends StatelessWidget {
  const PresetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var sheetProvider = context.read<SheetProvider>();
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Wrap(runSpacing: 8, children: [
          Row(children: [
            OrganizationTypeCell(
                image: Assets.musicalSchools.image(),
                onPressed: () =>
                    sheetProvider.changeSearchText('Музыкальные школы')),
            const Padding(padding: EdgeInsets.only(left: 8)),
            OrganizationTypeCell(
                image: Assets.artSchools.image(),
                onPressed: () =>
                    sheetProvider.changeSearchText('Художественные школы'))
          ]),
          Row(children: [
            OrganizationTypeCell(
                image: Assets.museums.image(),
                onPressed: () => sheetProvider.changeSearchText('Музеи')),
            const Padding(padding: EdgeInsets.only(left: 8)),
            OrganizationTypeCell(
                image: Assets.exhibitions.image(),
                onPressed: () => sheetProvider.changeSearchText('Выставки')),
            const Padding(padding: EdgeInsets.only(left: 8)),
            OrganizationTypeCell(
                image: Assets.theaters.image(),
                onPressed: () => sheetProvider.changeSearchText('Театры'))
          ]),
          Row(children: [
            FixedOrganizationTypeCell(
                image: Assets.childrenArtSchools.image(),
                width: 155,
                onPressed: () =>
                    sheetProvider.changeSearchText('Детские школы искусств')),
            const Padding(padding: EdgeInsets.only(left: 8)),
            OrganizationTypeCell(
                image: Assets.danceSchools.image(),
                onPressed: () =>
                    sheetProvider.changeSearchText('Танцевальные школы'))
          ])
        ]));
  }
}
