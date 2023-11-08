import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){runApp(MaterialApp(
    home: googlemap(),
));
}

class googlemap extends StatefulWidget {
  const googlemap({Key? key}) : super(key: key);

  @override
  State<googlemap> createState() => _googlemapState();
}

class _googlemapState extends State<googlemap> {
  final Completer<GoogleMapController> _controller = Completer<
      GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(10.935975593335892, 75.88079902624622),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(10.919000523693185, 75.87983896211983),
      tilt: 59.44071769714355,
      zoom: 19.151926040649414
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          }
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake, label: const Text("To The Lake!"),
        icon: const Icon(Icons.directions_boat),),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}