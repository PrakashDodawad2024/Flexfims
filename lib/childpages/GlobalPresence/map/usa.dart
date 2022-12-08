import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UsaMap extends StatefulWidget {
  @override
  _UsaMapState createState() => _UsaMapState();
}

class _UsaMapState extends State<UsaMap> {
  late GoogleMapController mapController;
  static final LatLng _center = const LatLng(37.68700, -85.92484);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  // void _onAddMarkerButtonPressed() {
  //   setState(() {
  //     _markers.add(Marker(
  //       markerId: MarkerId(_currentMapPosition.toString()),
  //       position: _currentMapPosition,
  //       infoWindow: InfoWindow(
  //           title: 'Flex Films (USA) INC',
  //           snippet: '1221 N Black Branch Rd,Elizabethtown,KY 42701'),
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
                      title: 'Flex Films (USA) INC',
                      snippet: '1221 N Black Branch Rd,Elizabethtown,KY 42701'),
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
