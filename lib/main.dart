import 'package:flexfilms/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'LandingPages/HomePage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

//Future<void> main() async {
// FlutterDownloader.initialize(
//   debug: true // optional: set false to disable printing logs to console
// );
// objectbox = await ObjectBox.create();
//  AmplifyAuthCognito().getCurrentUser(request:AuthUserRequest() );
// var ses = await Amplify.Auth.fetchAuthSession(
//       options: CognitoSessionOptions(getAWSCredentials: true),
//     );
//      var identityId = ses as CognitoAuthSession;
//      String _token = identityId.userPoolTokens.refreshToken;
//      print('refreshToken:$_token');
// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
// FirebaseMessaging messaging = FirebaseMessaging.instance;
// print('messaging:$messaging');
// NotificationSettings settings = await messaging.requestPermission(
//   alert: true,
//   announcement: true,
//   badge: true,
//   carPlay: true,
//   criticalAlert: true,
//   provisional: true,
//   sound: true,
// );
// print('User granted permission: ${settings.authorizationStatus}');
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  print('messaging:$messaging');
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: true,
    badge: true,
    carPlay: true,
    criticalAlert: true,
    provisional: true,
    sound: true,
  );
  print('User granted permission: ${settings.authorizationStatus}');
  runApp(MyApp());
}
//}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// class LocationPage extends StatefulWidget {
//   const LocationPage({super.key});

//   @override
//   State<LocationPage> createState() => _LocationPageState();
// }

// class _LocationPageState extends State<LocationPage> {
//   static final CameraPosition _kGoogle = const CameraPosition(
//     target: LatLng(13.058048, 77.561856),
//     zoom: 15,
//   );
//   late GoogleMapController mapController;

//   final Set<Marker> _markers = {};
//   LatLng _currentMapPosition = const LatLng(13.058048, 77.561856);

//   void _onCameraMove(CameraPosition position) {
//     _currentMapPosition = position.target;
//   }

  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  //   controller.showMarkerInfoWindow(
  //     MarkerId(_currentMapPosition.toString()),
  //   );
  // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   automaticallyImplyLeading: true,
//       //   // foregroundColor: Colors.transparent,
//       //   backgroundColor: Colors.transparent,
//       // ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             // color: Colors.red,
//             height: 850,
//             child: GoogleMap(
//                 onMapCreated: _onMapCreated,
//                 initialCameraPosition: _kGoogle,
//                 markers: {
//                   Marker(
//                     markerId: MarkerId(_currentMapPosition.toString()),
//                     position: _currentMapPosition,
//                     infoWindow: InfoWindow(
//                         title: 'Order will be delivered here',
//                         snippet: 'place the pin accurately on the map'),
//                     icon: BitmapDescriptor.defaultMarker,
//                   ),
//                 },
//                 onCameraMove: _onCameraMove),
//           ),
//           // Padding(
//         ],
//       ),
//     );
//   }
// }
// GoogleMap(
//                                         zoomGesturesEnabled: true,
//                                         tiltGesturesEnabled: false,
//                                         gestureRecognizers: Set()
//                                           ..add(Factory<TapGestureRecognizer>(
//                                               () => TapGestureRecognizer())),
//                                         minMaxZoomPreference:
//                                             MinMaxZoomPreference(13, 17),
//                                         onMapCreated: (mapController) {
//                                           mapController.showMarkerInfoWindow(
//                                               MarkerId("1"));
//                                         },
//                                         initialCameraPosition: CameraPosition(
//                                           target: _center,
//                                           zoom: 0.0,
//                                         ),
//                                         markers: {
//                                           Marker(
//                                             markerId: MarkerId("1"),
//                                             position: _currentMapPosition,
//                                             infoWindow: InfoWindow(
//                                                 title: 'Consumer Location',
//                                                 snippet: widget.Details[
//                                                             "post_address"] !=
//                                                         null
//                                                     ? '${widget.Details["post_address"]}'
//                                                     : "        Location"),
//                                             icon:
//                                                 BitmapDescriptor.defaultMarker,
//                                           )
//                                         },
//                                         onCameraMove: _onCameraMove),