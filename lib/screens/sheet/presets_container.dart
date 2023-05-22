import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/localization.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/sheet/organization_type_cell.dart';
import 'package:provider/provider.dart';

class PresetsContainer extends StatelessWidget {
  const PresetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var sheetProvider = context.read<SheetProvider>();
    return Wrap(runSpacing: 8, children: [
      Row(children: [
        OrganizationTypeCell(
            image: Assets.musicalSchools.image(),
            onPressed: () => sheetProvider
                .changeSearchText(Localization.shared.locale.musical_schools)),
        const Padding(padding: EdgeInsets.only(left: 8)),
        OrganizationTypeCell(
            image: Assets.artSchools.image(),
            onPressed: () => sheetProvider
                .changeSearchText(Localization.shared.locale.art_schools))
      ]),
      Row(children: [
        OrganizationTypeCell(
            image: Assets.museums.image(),
            onPressed: () => sheetProvider
                .changeSearchText(Localization.shared.locale.museums)),
        const Padding(padding: EdgeInsets.only(left: 8)),
        OrganizationTypeCell(
            image: Assets.exhibitions.image(),
            onPressed: () => sheetProvider
                .changeSearchText(Localization.shared.locale.exhibitions)),
        const Padding(padding: EdgeInsets.only(left: 8)),
        OrganizationTypeCell(
            image: Assets.theaters.image(),
            onPressed: () => sheetProvider
                .changeSearchText(Localization.shared.locale.theaters))
      ]),
      Row(children: [
        FixedOrganizationTypeCell(
            image: Assets.childrenArtSchools.image(),
            width: 155,
            onPressed: () => sheetProvider.changeSearchText(
                Localization.shared.locale.children_art_schools)),
        const Padding(padding: EdgeInsets.only(left: 8)),
        OrganizationTypeCell(
            image: Assets.danceSchools.image(),
            onPressed: () => sheetProvider
                .changeSearchText(Localization.shared.locale.dance_schools))
      ])
    ]);
  }
}
