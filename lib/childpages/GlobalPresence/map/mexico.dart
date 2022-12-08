import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MexicoMap extends StatefulWidget {
  @override
  _MexicoMapState createState() => _MexicoMapState();
}

class _MexicoMapState extends State<MexicoMap> {
  late GoogleMapController mapController;
  static final LatLng _center = const LatLng(22.3986, -97.919872);
  final Set<Marker> _markers = {};
  LatLng _currentMapPosition = _center;

  // void _onAddMarkerButtonPressed() {
  //   setState(() {
  //     _markers.add(Marker(
  //       markerId: MarkerId(_currentMapPosition.toString()),
  //       position: _currentMapPosition,
  //       infoWindow: InfoWindow(
  //           title: 'FLEX AMERICAS S.A. de C.V.',
  //           snippet:
  //               'Boulevard de los Rios 5680,Zona Puerto,Industrial, Altamira,Tamaulipas, Mexico C.P. 89603'),
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
                      title: 'FLEX AMERICAS S.A. de C.V.',
                      snippet:
                          'Boulevard de los Rios 5680,Zona Puerto,Industrial, Altamira,Tamaulipas, Mexico C.P. 89603'),
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
