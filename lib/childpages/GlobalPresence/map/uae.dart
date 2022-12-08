import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UaeMap extends StatefulWidget {
  @override
  _UaeMapState createState() => _UaeMapState();
}

class _UaeMapState extends State<UaeMap> {
  late GoogleMapController mapController;
  static final LatLng _center = const LatLng(24.988172, 55.088094);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  // void _onAddMarkerButtonPressed() {
  //   setState(() {
  //     _markers.add(Marker(
  //       markerId: MarkerId(_currentMapPosition.toString()),
  //       position: _currentMapPosition,
  //       infoWindow: InfoWindow(
  //           title: 'FLEX MIDDLE EAST FZE',
  //           snippet:
  //               'Post Box 17930,Jebel Ali Free Zone Dubai,United Arab Emirates.'),
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
                      title: 'FLEX MIDDLE EAST FZE',
                      snippet:
                          'Post Box 17930,Jebel Ali Free Zone Dubai,United Arab Emirates.'),
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
