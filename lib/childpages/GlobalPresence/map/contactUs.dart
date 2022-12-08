import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class contactMap extends StatefulWidget {
  @override
  _contactMapState createState() => _contactMapState();
}

class _contactMapState extends State<contactMap> {
  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation =
      const LatLng(28.574654, 77.307999); //location to show in map

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 250,
          child: GoogleMap(
            //Map widget from google_maps_flutter package
            zoomGesturesEnabled: true, //enable Zoom in, out on map
            initialCameraPosition: CameraPosition(
              //innital position in map
              target: showLocation, //initial position
              zoom: 0, //initial zoom level
            ),
            markers: getmarkers(), //markers to show on map
            mapType: MapType.normal, //map type
            onMapCreated: (controller) {
              //method called when map is created
              setState(() {
                mapController = controller;
              });
            },
          ),
        )
      ],
    );
  }

  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(29.94514, 30.906222), //position of marker
        infoWindow: InfoWindow(
            title: 'FLEX P FILMS (EGYPT) S.A.E.',
            snippet:
                'Plot No. R2 in Engineering, Square (e2),Plot No.3 in, North Extensions Of Industrial Zones,6th October City, Arab Republic of Egypt.'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker(
        //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(47.915088, 47.915088),
        infoWindow: InfoWindow(
            title: 'Flex Films Europa KFT',
            snippet: '2651 Rétság, Ipari Park-7, Hungary'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(28.574654, 77.307999),
        infoWindow: InfoWindow(
            title: 'UFLEX LIMITED (Films Business)',
            snippet: 'A - 1, Sector - 60,Noida – 201301 (U.P.) India.'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(22.3986, -97.919872),
        infoWindow: InfoWindow(
            title: 'FLEX AMERICAS S.A. de C.V.',
            snippet:
                'Boulevard de los Rios 5680,Zona Puerto,Industrial, Altamira,Tamaulipas, Mexico C.P. 89603'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(6.86579, 3.71518),
        infoWindow: InfoWindow(
            title: 'Flex Films Africa Pvt. Ltd.',
            snippet:
                'Plan No. IJC 354(OG), Within 1 KM Corridor Acquisition, Along Lagos/Ibadan Expressway, Ogere, Ikenne, Local Government Area, Ogun State, Nigeria'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(52.326918, 17.555255),
        infoWindow: InfoWindow(
            title: 'Flex Films EUROPA SP. Z.O.O.',
            snippet:
                'PO. Box 62 300 Wrzesnia ul,Gen. Wladyslawa Sikorskiego 48 Poland'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(54.886598, 38.077259),
        infoWindow: InfoWindow(
            title: 'FLEX FILMS RUS LLC',
            snippet:
                'Bld.1, Pos. 4, Industrialnaya str.,Smatovo vil, Stupino, Moscow Region, 142821, Russia'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(24.988172, 55.088094),
        infoWindow: InfoWindow(
            title: 'FLEX MIDDLE EAST FZE',
            snippet:
                'Post Box 17930,Jebel Ali Free Zone Dubai,United Arab Emirates.'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(37.68700, -85.92484),
        infoWindow: InfoWindow(
            title: 'Flex Films (USA) INC',
            snippet: '1221 N Black Branch Rd,Elizabethtown,KY 42701'),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
    });

    return markers;
  }
}
