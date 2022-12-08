import 'dart:async';

import 'package:flexfilms/childpages/GlobalPresence/map/mexico.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf/mexico1.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf/mexico2.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf/mexico3.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf/mexico4.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf/mexico5.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf/mexico6.dart';
import 'package:flexfilms/childpages/GlobalPresence/mexicoPdf/mexico7.dart';
import 'package:flexfilms/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../LandingPages/SecondCarousel.dart';

class flexFilmsMexico extends StatefulWidget {
  const flexFilmsMexico({super.key});

  @override
  State<flexFilmsMexico> createState() => _flexFilmsMexicoState();
}

class _flexFilmsMexicoState extends State<flexFilmsMexico> {
  final List<Map<String, String>> imageList2 = [
    {'image': 'assets/globalpresence/mexico/slider-1 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-2 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-3 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-4 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-5 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-6 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-7 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-8 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-9 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-10 (1).jpg'},
    {'image': 'assets/globalpresence/mexico/slider-11 (1).jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      text: 'Mexico ',
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
                  'FLEX AMERICAS S.A. de C.V.',
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
                  'Setting The Trend For The Art And Science Of Converting',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
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
                                  text: 'Two',
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
                                  text: '60,000 TPA ',
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
                                  text: 'Two',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: ' 2.45 meter wide',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text:
                                      '  plasma enhanced state-of-the-art high-barrier metallizer ',
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
                                  text: '10,800 TPA',
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
                                  text: ' 1.25 & ',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text: 'One ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: '1.6 meter wide ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: 'Alox Coater ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: 'with a cumulative capacity of ',
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => mexicoPdf(),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 1.0,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/home/certificate1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
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
                      builder: (context) => mexico1(),
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
                                builder: (context) => mexico1(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'SCS "RECYCLED CONTENT CERTIFIED" CERTIFICATION FOR 100% RECYCLED CONTENT PCR PET PLASTIC FILM ASCLEPIUS™',
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
                      builder: (context) => mexico2(),
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
                                builder: (context) => mexico2(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'SCS "RECYCLED CONTENT CERTIFIED" CERTIFICATION FOR 90% RECYCLED CONTENT PCR PET PLASTIC FILM ASCLEPIUS™',
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
                      builder: (context) => mexico3(),
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
                                builder: (context) => mexico3(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'BUREAU VERITAS "NMX-CC-9001-IMNC-2015 / ISO 9001:2015" CERTIFICATE',
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
                      builder: (context) => mexico4(),
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
                                builder: (context) => mexico4(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'BUREAU VERITAS "NMX-SAA-14001-IMNC-2015 / ISO 14001:2015" CERTIFICATE',
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
                      builder: (context) => mexico5(),
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
                                builder: (context) => mexico5(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'BUREAU VERITAS "FSSC 22000" CERTIFICATE',
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
                      builder: (context) => mexico6(),
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
                                builder: (context) => mexico6(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'PACKAGING CONSULTANTS INTERNATIONAL "FDA/IMS 2020" CERTIFICATE',
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
                      builder: (context) => mexico7(),
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
                                builder: (context) => mexico7(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'PACKAGING CONSULTANTS INTERNATIONAL "FDA/IMS 2018" CERTIFICATE',
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
                                      ' Boulevard de los Rios 5680, Zona Puerto Industrial, Altamira, Tamaulipas, Mexico, C.P. 89603.',
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
                                  text: ' +971 4 810 2300',
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
                                  text: ' +971 4 8839683',
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
          MexicoMap(),
        ],
      ),
    );
  }
}
