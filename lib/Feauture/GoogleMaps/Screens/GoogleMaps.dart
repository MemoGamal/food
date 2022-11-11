import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../config/app_layout.dart';

class GoogleMaps extends StatelessWidget {
  const GoogleMaps({super.key});

  final CameraPosition _MyHomeLocation =
      const CameraPosition(target: LatLng(29.9824846, 30.9470162), zoom: 16.5);
  final Marker TestMarker = const Marker(
    markerId: MarkerId("TestMarker"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(29.9824846, 30.9470162),
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: GetWidth(),
          height: GetHeightinPixels(200),
          child: GoogleMap(
            initialCameraPosition: _MyHomeLocation,
            mapType: MapType.hybrid,
          ),
        ),
      ],
    );
  }
}
