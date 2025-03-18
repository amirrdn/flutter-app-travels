import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPreview extends StatefulWidget {
  final String location;
  final double latitude;
  final double longitude;

  const MapPreview({
    super.key,
    required this.location,
    required this.latitude,
    required this.longitude,
  });

  @override
  State<MapPreview> createState() => _MapPreviewState();
}

class _MapPreviewState extends State<MapPreview> {
  late GoogleMapController mapController;
  late Set<Marker> markers;

  @override
  void initState() {
    super.initState();
    markers = {
      Marker(
        markerId: const MarkerId('location'),
        position: LatLng(widget.latitude, widget.longitude),
        infoWindow: InfoWindow(
          title: widget.location,
        ),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(widget.latitude, widget.longitude),
        zoom: 15,
      ),
      markers: markers,
      onMapCreated: (GoogleMapController controller) {
        mapController = controller;
      },
    );
  }
}
