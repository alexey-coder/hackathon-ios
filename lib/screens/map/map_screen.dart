import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps/screens/map/pin_button.dart';
import 'package:maps/screens/sheet/sheet_screen.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      FlutterMap(
          mapController: mapController,
          options: MapOptions(
              interactiveFlags:
                  InteractiveFlag.pinchZoom | InteractiveFlag.drag,
              center: LatLng(59.942668, 30.315871)),
          children: [
            TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app'),
            MarkerLayer(markers: [
              Marker(
                  point: LatLng(59.942668, 30.315871),
                  width: 30,
                  height: 30,
                  builder: (context) => PinButton(onPressed: () => {})),
              Marker(
                  point: LatLng(59.952670, 30.315879),
                  width: 30,
                  height: 30,
                  builder: (context) => PinButton(onPressed: () => {})),
              Marker(
                  point: LatLng(59.742668, 30.415871),
                  width: 30,
                  height: 30,
                  builder: (context) => PinButton(onPressed: () => {})),
              Marker(
                  point: LatLng(59.952670, 30.315879),
                  width: 30,
                  height: 30,
                  builder: (context) => PinButton(onPressed: () => {})),
              Marker(
                  point: LatLng(59.432668, 30.418871),
                  width: 40,
                  height: 40,
                  builder: (context) => PinButton(onPressed: () => {})),
            ])
          ]),
      SheetScreen()
    ]);
  }
}
