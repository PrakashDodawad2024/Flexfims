import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class indian extends StatefulWidget {
  @override
  _indianState createState() => _indianState();
}

class _indianState extends State<indian> {
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(28.574654, 77.307999),
    zoom: 10,
  );
  late GoogleMapController mapController;
  static final LatLng _center = const LatLng(28.574654, 77.307999);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  // void _onAddMarkerButtonPressed() {
  //   setState(() {
  //     _markers.add(Marker(
  //       markerId: MarkerId(_currentMapPosition.toString()),
  //       position: _currentMapPosition,
  //       infoWindow: InfoWindow(
  //           title: 'UFLEX LIMITED (Films Business)',
  //           snippet: 'A - 1, Sector - 60,Noida – 201301 (U.P.) India.'),
  //       icon: BitmapDescriptor.defaultMarker,
  //     ));
  //   });
  // }

  void _onCameraMove(CameraPosition position) {
    _currentMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 250,
          child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: _kGoogle,
              markers: {
                Marker(
                  markerId: MarkerId(_currentMapPosition.toString()),
                  position: _currentMapPosition,
                  infoWindow: InfoWindow(
                      title: 'UFLEX LIMITED (Films Business)',
                      snippet:
                          'A - 1, Sector - 60,Noida – 201301 (U.P.) India.'),
                  icon: BitmapDescriptor.defaultMarker,
                )
              },
              onCameraMove: _onCameraMove),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(14.0),
        //   child: Align(
        //     alignment: Alignment.topRight,
        //     child: FloatingActionButton(
        //       onPressed: _onAddMarkerButtonPressed,
        //       materialTapTargetSize: MaterialTapTargetSize.padded,
        //       backgroundColor: Colors.green,
        //       child: const Icon(Icons.map, size: 30.0),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
