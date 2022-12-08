import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HungaryMap extends StatefulWidget {
  @override
  _HungaryMapState createState() => _HungaryMapState();
}

class _HungaryMapState extends State<HungaryMap> {
  late GoogleMapController mapController;
  static final LatLng _center = const LatLng(47.915088, 47.915088);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  

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
                      title: 'Flex Films Europa KFT',
                      snippet: '2651 Rétság, Ipari Park-7, Hungary'),
                  icon: BitmapDescriptor.defaultMarker,
                )
              },
              onCameraMove: _onCameraMove),
        ),
       
      ],
    );
  }
}
