import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/localization.dart';
import 'package:maps/providers/sheet_provider.dart';
import 'package:maps/screens/common_widgets/preset_card.dart';
import 'package:provider/provider.dart';

class PresetsContainer extends StatelessWidget {
  const PresetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var sheetProvider = context.read<SheetProvider>();
    return Wrap(runSpacing: 8, children: [
      Row(children: [
        PresetCard(
            flex: 16 / 10,
            image: Assets.musicalSchools.image(),
            itemHeight: 100,
            onTap: () => {
                  sheetProvider.changeSearchText(
                      Localization.shared.locale.musical_schools)
                }),
        const Padding(padding: EdgeInsets.only(left: 8)),
        PresetCard(
            flex: 16 / 10,
            image: Assets.artSchools.image(),
            itemHeight: 100,
            onTap: () => {
                  sheetProvider
                      .changeSearchText(Localization.shared.locale.art_schools)
                }),
        const Padding(padding: EdgeInsets.only(left: 8))
      ]),
      Row(children: [
        PresetCard(
            flex: 104 / 100,
            image: Assets.museums.image(),
            itemHeight: 100,
            onTap: () => {
                  sheetProvider
                      .changeSearchText(Localization.shared.locale.museums)
                }),
        const Padding(padding: EdgeInsets.only(left: 8)),
        PresetCard(
            flex: 104 / 100,
            image: Assets.exhibitions.image(),
            itemHeight: 100,
            onTap: () => {
                  sheetProvider
                      .changeSearchText(Localization.shared.locale.exhibitions)
                }),
        const Padding(padding: EdgeInsets.only(left: 8)),
        PresetCard(
            flex: 104 / 100,
            image: Assets.theaters.image(),
            itemHeight: 100,
            onTap: () => {
                  sheetProvider
                      .changeSearchText(Localization.shared.locale.theaters)
                }),
        const Padding(padding: EdgeInsets.only(left: 8))
      ]),
      Row(children: [
        PresetCard(
            flex: 16 / 10,
            image: Assets.childrenArtSchools.image(),
            itemHeight: 100,
            onTap: () => {
                  sheetProvider.changeSearchText(
                      Localization.shared.locale.children_art_schools)
                }),
        const Padding(padding: EdgeInsets.only(left: 8)),
        PresetCard(
            flex: 16 / 10,
            image: Assets.danceSchools.image(),
            itemHeight: 100,
            onTap: () => {
                  sheetProvider.changeSearchText(
                      Localization.shared.locale.dance_schools)
                }),
        const Padding(padding: EdgeInsets.only(left: 8))
      ])
    ]);
  }
}
