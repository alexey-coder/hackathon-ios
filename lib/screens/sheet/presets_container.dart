import 'package:flutter/material.dart';
import 'package:maps/gen/assets.gen.dart';
import 'package:maps/screens/sheet/organization_type_cell.dart';

class PresetsContainer extends StatelessWidget {
  const PresetsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Wrap(runSpacing: 8, children: [
          Row(children: [
            OrganizationTypeCell(
                image: Assets.musicalSchools.image(),
                onPressed: () => {print('musical schools')}),
            const Padding(padding: EdgeInsets.only(left: 8)),
            OrganizationTypeCell(
                image: Assets.artSchools.image(),
                onPressed: () => {print('art schools')})
          ]),
          Row(children: [
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
          ]),
          Row(children: [
            FixedOrganizationTypeCell(
                image: Assets.childrenArtSchools.image(),
                width: 155,
                onPressed: () => {print('children art schools')}),
            const Padding(padding: EdgeInsets.only(left: 8)),
            OrganizationTypeCell(
                image: Assets.danceSchools.image(),
                onPressed: () => {print('dance schools')})
          ])
        ]));
  }
}
