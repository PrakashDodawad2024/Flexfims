import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NigeriaMap extends StatefulWidget {
  @override
  _NigeriaMapState createState() => _NigeriaMapState();
}

class _NigeriaMapState extends State<NigeriaMap> {
  late GoogleMapController mapController;
  static final LatLng _center = const LatLng(6.86579, 3.71518);
  LatLng _currentMapPosition = _center;
  final Set<Marker> _markers = {};

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_currentMapPosition.toString()),
        position: _currentMapPosition,
        infoWindow: InfoWindow(
            title: 'Flex Films Africa Pvt. Ltd.',
            snippet:
                'Plan No. IJC 354(OG), Within 1 KM Corridor Acquisition, Along Lagos/Ibadan Expressway, Ogere, Ikenne, Local Government Area, Ogun State, Nigeria'),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

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
              myLocationButtonEnabled: false,
              myLocationEnabled: true,
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
                      title: 'Flex Films Africa Pvt. Ltd.',
                      snippet:
                          'Plan No. IJC 354(OG), Within 1 KM Corridor Acquisition, Along Lagos/Ibadan Expressway, Ogere, Ikenne, Local Government Area, Ogun State, Nigeria'),
                  icon: BitmapDescriptor.defaultMarker,
                ),
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
