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
