import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solution_challenge_project/export.dart';

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({super.key});

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  late final Completer<GoogleMapController> _controller = Completer();
  static CameraPosition get _kGooglePlex => const CameraPosition(
        target: LatLng(-8.7465566, 34.5138858),
        zoom: 14.4746,
      );

  static CameraPosition get _kLake => const CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(-3.3893677, 29.3648105),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414,
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const ArrowLeft(),
        title: Text(
          "Location",
          style: TextStyle(
            fontSize: 30.sp,
            color: AppConstants.mainOrange,
            fontFamily: FontConstants.playfairDisplaySemiBold,
          ),
        ),
        elevation: 0,
        backgroundColor: AppConstants.mainWhite,
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('Zoom'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
