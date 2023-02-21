import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapBody extends StatelessWidget {
  final LatLng location;
  final String carId;
  final Function(GoogleMapController)? onMapCreated;
  const MapBody({
    super.key,
    required this.onMapCreated,
    required this.location,
    required this.carId,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: location,
        zoom: 15,
      ),
      mapToolbarEnabled: false,
      compassEnabled: false,
      zoomControlsEnabled: false,
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      onMapCreated: onMapCreated,
      markers: {
        Marker(
          markerId: MarkerId(carId),
          position: location,
        ),
      },
    );
  }
}
