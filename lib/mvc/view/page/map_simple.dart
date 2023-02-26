
/*
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  late CameraPosition _initialLocation = CameraPosition(
    target: LatLng(24.890082723330085, 91.87850871655735),
    zoom: 15,
  );

  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};

  List<LatLng> latlng = [
    LatLng(24.906182348304522, 91.87077641487122),
    LatLng(24.90575545593598, 91.88068058712895),
    LatLng(24.904370418195032, 91.8851034318867),
    LatLng(24.89507386732562, 91.8830394744873),
    LatLng(24.890082723330085, 91.87850871655735),
    LatLng(24.895331864395978, 91.86750143766403),
    LatLng(24.90247476673091, 91.86595916748047),
  ];

  void getCurrentPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("Permisisons not given");
      LocationPermission asked = await Geolocator.requestPermission();
    } else {

        Position currentPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best);
        _initialLocation = CameraPosition(
          target: LatLng(currentPosition.longitude, currentPosition.latitude),
          zoom: 15,
        );

      /*print("Longitude:" + currentPosition.longitude.toString());
      print("Latitude:" + currentPosition.latitude.toString());*/


    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentPosition();
    for (int i = 0; i < latlng.length; i++) {
      _markers.add(
        Marker(
          markerId: MarkerId(i.toString()),
          position: latlng[i],
          infoWindow: InfoWindow(
            title: "Really cool place",
            snippet: "5 star rating",
          ),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
      setState(() {});
      _polyline.add(Polyline(
        polylineId: PolylineId('1'),
        points: latlng,
        color: Colors.orange,
        width: 3,
      ));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          markers: _markers,
          mapType: MapType.hybrid,
          initialCameraPosition: _initialLocation,
          myLocationEnabled: true,
          polylines: _polyline,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }

// Future<void> _goUserLocation() async {
//   final GoogleMapController controller = await _controller.future;
//   controller.animateCamera(CameraUpdate.newCameraPosition(null));
// }
}
*/