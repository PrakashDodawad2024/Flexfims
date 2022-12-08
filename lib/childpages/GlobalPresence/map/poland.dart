import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PolandMap extends StatefulWidget {
  @override
  _PolandMapState createState() => _PolandMapState();
}

class _PolandMapState extends State<PolandMap> {
  late GoogleMapController mapController;
  static final LatLng _center = const LatLng(52.326918, 17.555255);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  // void _onAddMarkerButtonPressed() {
  //   setState(() {
  //     _markers.add(Marker(
  //       markerId: MarkerId(_currentMapPosition.toString()),
  //       position: _currentMapPosition,
  //       infoWindow: InfoWindow(
  //           title: 'Flex Films EUROPA SP. Z.O.O.',
  //           snippet:
  //               'PO. Box 62 300 Wrzesnia ul,Gen. Wladyslawa Sikorskiego 48 Poland'),
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
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 10.0,
              ),
              markers: {
                Marker(
                  markerId: MarkerId(_currentMapPosition.toString()),
                  position: _currentMapPosition,
                  infoWindow: InfoWindow(
                      title: 'Flex Films EUROPA SP. Z.O.O.',
                      snippet:
                          'PO. Box 62 300 Wrzesnia ul,Gen. Wladyslawa Sikorskiego 48 Poland'),
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
