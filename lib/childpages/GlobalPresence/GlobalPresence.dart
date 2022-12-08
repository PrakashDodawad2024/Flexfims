import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import '../HomePage/DownGlobalPresence.dart';
import '../HomePage/DownProducts.dart';
import '../HomePage/DownSiteMap.dart';
import '../HomePage/HomeContactUs.dart';
import '../HomePage/LogOut.dart';
import 'Egypt.dart';
import 'GlobalPerspective.dart';
import 'Hungary.dart';
import 'India.dart';
import 'Mexico.dart';
import 'Nigeria.dart';
import 'Poland.dart';
import 'Russia.dart';
import 'Uae.dart';
import 'Usa.dart';

class GlobalPresence extends StatefulWidget {
  const GlobalPresence({super.key});

  @override
  State<GlobalPresence> createState() => _GlobalPresenceState();
}

class _GlobalPresenceState extends State<GlobalPresence> {
  Map<String, bool> highlight = {
    "globalPerspective": true,
    "flexBusinessIndia": false,
    "flexFilmsUae": false,
    "flexFilmsMexico": false,
    "flexFilmsEgypt": false,
    "flexFilmsPoland": false,
    "flexFilmsUsa": false,
    "flexFilmsRussia": false,
    "flexFilmsHungary": false,
    "flexFilmsNigeria": false,
  };
  String current_val = 'Global Perspective';

  List<Widget> Globallist = <Widget>[
    globalPerspective(),
    flexBusinessIndia(),
    flexFilmsUae(),
    flexFilmsMexico(),
    flexFilmsEgypt(),
    flexFilmsPoland(),
    flexFilmsUsa(),
    flexFilmsRussia(),
    flexFilmsHungary(),
    flexFilmsNigeria(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.Globalpageindex) {
      case 0:
        setState(() {
          current_val = 'Global Perspective';
          highlight['globalPerspective'] = true;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 1:
        setState(() {
          current_val = 'Flex Business India ';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = true;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 2:
        setState(() {
          current_val = 'Flex Films Uae ';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = true;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 3:
        setState(() {
          current_val = 'Flex Films Mexico';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = true;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 4:
        setState(() {
          current_val = 'Flex Films Egypt';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = true;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 5:
        setState(() {
          current_val = 'Flex Films Poland';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = true;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 6:
        setState(() {
          current_val = 'Flex Films Usa';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = true;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 7:
        setState(() {
          current_val = 'Flex Films Russia';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = true;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 8:
        setState(() {
          current_val = ' Flex Films Hungary';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = true;
          highlight['flexFilmsNigeria'] = false;
        });
        break;
      case 9:
        setState(() {
          current_val = 'Flex Films Nigeria ';
          highlight['globalPerspective'] = false;
          highlight['flexBusinessIndia'] = false;
          highlight['flexFilmsUae'] = false;
          highlight['flexFilmsMexico'] = false;
          highlight['flexFilmsEgypt'] = false;
          highlight['flexFilmsPoland'] = false;
          highlight['flexFilmsUsa'] = false;
          highlight['flexFilmsRussia'] = false;
          highlight['flexFilmsHungary'] = false;
          highlight['flexFilmsNigeria'] = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 1.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(
                    'assets/globalpresence/globalperspective/global-header-bg.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.red),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Text(
                    "Global Presence",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 10,
                  endIndent: 280,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Wrap(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.home,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                  text: '  > Global Presence:',
                                  style: TextStyle(fontSize: 16)),
                              TextSpan(
                                  text: ' > ${current_val} ',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.yellow)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.Globalpageindex = 0;
          //                     current_val = 'Global Perspective';
          //                     highlight['globalPerspective'] = true;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });

          //                   // Navigator.push(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => GlobalPerspect()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Global Perspective",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['globalPerspective'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Business India ';
          //                     Alldata.Globalpageindex = 1;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = true;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => India()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Business India",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexBusinessIndia'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Films Uae ';
          //                     Alldata.Globalpageindex = 2;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = true;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(builder: (context) => Uae()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Uae ",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsUae'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Films Mexico';
          //                     Alldata.Globalpageindex = 3;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = true;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Mexico()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Mexico",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsMexico'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Films Egypt';
          //                     Alldata.Globalpageindex = 4;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = true;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Egypt()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Egypt",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsEgypt'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Films Poland';
          //                     Alldata.Globalpageindex = 5;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = true;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Poland()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Poland",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsPoland'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Films Usa';
          //                     Alldata.Globalpageindex = 6;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = true;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(builder: (context) => Usa()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Usa",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsUsa'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Films Russia';
          //                     Alldata.Globalpageindex = 7;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = true;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Russia()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Russia",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsRussia'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = ' Flex Films Hungary';
          //                     Alldata.Globalpageindex = 8;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = true;
          //                     highlight['flexFilmsNigeria'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Nigeria()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Hungary",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsHungary'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     current_val = 'Flex Films Nigeria ';
          //                     Alldata.Globalpageindex = 9;
          //                     highlight['globalPerspective'] = false;
          //                     highlight['flexBusinessIndia'] = false;
          //                     highlight['flexFilmsUae'] = false;
          //                     highlight['flexFilmsMexico'] = false;
          //                     highlight['flexFilmsEgypt'] = false;
          //                     highlight['flexFilmsPoland'] = false;
          //                     highlight['flexFilmsUsa'] = false;
          //                     highlight['flexFilmsRussia'] = false;
          //                     highlight['flexFilmsHungary'] = false;
          //                     highlight['flexFilmsNigeria'] = true;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Nigeria()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Flex Films Nigeria",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['flexFilmsNigeria'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Row(
          //     children: List.generate(
          //       250 ~/ 1,
          //       (index) => Expanded(
          //         child: Container(
          //           color: index % 2 == 0 ? Colors.transparent : Colors.grey,
          //           height: 2,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            child: Globallist[Alldata.Globalpageindex],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255, 225, 225, 225),
              child: Column(
                children: [
                  DownSIteMap(),
                  DownProducts(),
                  DownGlobalPresence(),
                  HomeContactUs(),
                  LogOut(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
