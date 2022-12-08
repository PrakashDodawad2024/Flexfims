import 'dart:async';

import 'package:flexfilms/childpages/GlobalPresence/egyptPdf/egypt1.dart';
import 'package:flexfilms/childpages/GlobalPresence/egyptPdf/egypt2.dart';
import 'package:flexfilms/childpages/GlobalPresence/egyptPdf/egypt3.dart';
import 'package:flexfilms/childpages/GlobalPresence/egyptPdf/egypt4.dart';
import 'package:flexfilms/childpages/GlobalPresence/egyptPdf/egypt5.dart';
import 'package:flexfilms/childpages/GlobalPresence/egyptPdf/egypt6.dart';
import 'package:flexfilms/childpages/GlobalPresence/egyptPdf/egypt7.dart';
import 'package:flexfilms/childpages/GlobalPresence/map/egypt.dart';
import 'package:flexfilms/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../LandingPages/SecondCarousel.dart';

class flexFilmsEgypt extends StatefulWidget {
  const flexFilmsEgypt({super.key});

  @override
  State<flexFilmsEgypt> createState() => _flexFilmsEgyptState();
}

class _flexFilmsEgyptState extends State<flexFilmsEgypt> {
  final List<Map<String, String>> imageList2 = [
    {'image': 'assets/globalpresence/egypt/slider-1.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-2.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-3.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-4.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-5.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-6.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-7.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-8.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-9.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-10.jpg'},
    {'image': 'assets/globalpresence/egypt/slider-11.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 1.2,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/globalpresence/egypt/mr-sanjay-tiku.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Text(
                '\"',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 52,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "We relentlessly work towards creating innovative & advanced packaging solutions backed by flawless service exceeding the expectations of our clients every time. We at Flex Films truly believe in nurturing and empowering people, sharing skills and imparting knowledge to enable them unleash their true potential translating into cumulative Operational Excellence enhancing value for all stakeholders.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                '\"',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 52,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 55,
                        width: 5,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 360,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Sanjay Tiku',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text:
                                          '                                                     Business Head - Flex Films Egypt',
                                      style: TextStyle(fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 250,
            height: 50,
            margin: EdgeInsets.all(10),
            child: Center(
                child: InkWell(
              onTap: () {
                MoreAbout();
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => AboutUsScreen(),
                // ));
              },
              child: Text(
                'MORE ABOUT SANJAY TIKU>>',
                style: TextStyle(color: Colors.blue),
              ),
            )),
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.blue,
              width: 3,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Flex Films ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'Egypt ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          SecondCarousel(imageList2: imageList2),
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 5, 5),
                child: Text(
                  'FLEX P. FILMS (EGYPT) S.A.E.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                child: Text(
                  'Delighting Converters With Most Innovative & Efficient Polymeric Films',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                'Key Highlights',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.image,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 340,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'One',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: ' 10.4 meter wide and ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: 'One',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: ' 8.7 meter wide ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text:
                                      ' Biaxially Oriented Polypropylene (BOPP) Film Lines ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: ' with a production capacity of ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: '77,000 TPA ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.image,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'One',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: ' 8.7 meter wide',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text:
                                      ' Biaxially Oriented Polyethylene Terephthalate (BOPET) Film Line ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: ' with a capacity of  ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: '30,000 TPA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.image,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'One',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: ' 3 meter wide',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text: ' Cast Polypropylene (CPP) Film Line ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: 'with a capacity of   ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: '7,000 TPA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.image,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Ten ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: 'normal & high ',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text:
                                      ' plasma enhanced advanced metallizers ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: 'with a Cumalative capacity of ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: '72,000 TPA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.image,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' One Alox Coater ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: 'with a capacity of ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: '4,000 TPA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
              child: Text(
                'Our Accreditations',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => egypt1(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => egypt1(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'AIB "860/1000" CERTIFICATE',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 1.0,
                                top: 2.0,
                                child: Icon(Icons.link, color: Colors.black54),
                              ),
                              Icon(Icons.link, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => egypt2(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => egypt2(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'BRCGS "GLOBAL STANDARD FOR PACKAGING MATERIALS" AA+ CERTIFICATE',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 1.0,
                                top: 2.0,
                                child: Icon(Icons.link, color: Colors.black54),
                              ),
                              Icon(Icons.link, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => egypt3(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => egypt3(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'SGS "ISO 45001:2018" CERTIFICATE',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 1.0,
                                top: 2.0,
                                child: Icon(Icons.link, color: Colors.black54),
                              ),
                              Icon(Icons.link, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => egypt4(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => egypt4(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'SGS "ISO 9001:2015" CERTIFICATE',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 1.0,
                                top: 2.0,
                                child: Icon(Icons.link, color: Colors.black54),
                              ),
                              Icon(Icons.link, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => egypt5(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => egypt5(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'SGS "ISO 14001:2015" CERTIFICATE',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 1.0,
                                top: 2.0,
                                child: Icon(Icons.link, color: Colors.black54),
                              ),
                              Icon(Icons.link, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => egypt6(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => egypt6(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'FLEX FILMS EGYPT HEALTH & SAFETY AND ENVIRONMANT POLICY',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 1.0,
                                top: 2.0,
                                child: Icon(Icons.link, color: Colors.black54),
                              ),
                              Icon(Icons.link, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => egypt7(),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => egypt7(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'FLEX FILMS EGYPT QUALITY & PACKAGING SAFETY POLICY',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 1.0,
                                top: 2.0,
                                child: Icon(Icons.link, color: Colors.black54),
                              ),
                              Icon(Icons.link, color: Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
              child: Text(
                'The Office',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.map_outlined,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Address:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text:
                                      ' Plot No. R2 in Engineering, Square (e2), Plot No.3 in, North Extensions Of Industrial Zones, 6th October City, Arab Republic of Egypt (Egypt)..',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.phone,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Phone:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: '+2 023 828 3000',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.fax,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Fax:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: '+2 023 828 3050',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.email,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () async {
                            String email =
                                Uri.encodeComponent(" enquiry@flexfilm.com");
                            String subject = Uri.encodeComponent("");
                            String body = Uri.encodeComponent("");
                            print(subject); //output: Hello%20Flutter
                            Uri mail = Uri.parse(
                                "mailto:$email?subject=$subject&body=$body");
                            if (await launchUrl(mail)) {
                              //email app opened
                            } else {
                              //email app is not opened
                            }
                          },
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Email:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                TextSpan(
                                    text: ' enquiry@flexfilm.com',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
              child: Text(
                'Our Location',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          EgyptMap(),
        ],
      ),
    );
  }

  void MoreAbout() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        elevation: 10,
        title: Container(
          width: 450,
          child: Text(
            'Sanjay Tiku',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        insetPadding: EdgeInsets.all(12),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                      height: 50,
                      width: 5,
                    ),
                  ),
                  SizedBox(
                    width: 295,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Business Head',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '- Flex P. Films (Egypt) S.A.E',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 299,
                  child: Container(
                    child: Text(
                      'Sanjay Tiku holds a Professional Degree in Management Accounting, CMA from ICA in addition to being a Science Baccalaureate from University of Kashmir',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 299,
                  child: Container(
                    child: Text(
                      'Sanjay’s illustrious career spans over 27 years in the Flexible Packaging Industry with a proven track record in the field of Operation, Marketing, Finance, People Management, Business Planning & Strategy.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 299,
                  child: Container(
                    child: Text(
                      'Endowed with a strategic bent of mind, backed by operational excellence; having gained multi-domain experience and owing to his unrelenting efforts, Sanjay was entrusted with the larger responsibility of spearheading Flex Middle East FZE – the greenfield project of Uflex and the group’s maiden overseas project in its endeavour to spread film manufacturing footprints outside India. Sanjay has delivered fruitful results for the organization during his overseas assignment spanning over 14 years now.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 299,
                  child: Container(
                    child: Text(
                      'Prior to his stint at Flex Films, Sanjay has held various positions in Group Companies handling trade related matters like anti-dumping & anti-subsidy wherein he negotiated for several measures that helped the Company in sustaining business in those countries.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 299,
                  child: Container(
                    child: Text(
                      'Sanjay currently heads Flex P. Films (Egypt) S.A.E',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Close',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
