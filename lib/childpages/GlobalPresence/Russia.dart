import 'dart:async';

import 'package:flexfilms/childpages/GlobalPresence/map/russia.dart';
import 'package:flexfilms/childpages/GlobalPresence/russiaPdf/russia1.dart';
import 'package:flexfilms/childpages/GlobalPresence/russiaPdf/russia2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../LandingPages/SecondCarousel.dart';

class flexFilmsRussia extends StatefulWidget {
  const flexFilmsRussia({super.key});

  @override
  State<flexFilmsRussia> createState() => _flexFilmsRussiaState();
}

class _flexFilmsRussiaState extends State<flexFilmsRussia> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(63.314433, 93.873642),
    zoom: 15.4746,
    tilt: 59.440717697143555,
  );

  final List<Map<String, String>> imageList2 = [
    {'image': 'assets/globalpresence/russia/slider-0.jpg'},
    {'image': 'assets/globalpresence/russia/slider-1.jpg'},
    {'image': 'assets/globalpresence/russia/slider-2.jpg'},
    {'image': 'assets/globalpresence/russia/slider-3.jpg'},
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
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/globalpresence/russia/Junaid-Khan-BH-FF-Russia.jpg'),
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
                "As part of a group that believes in absolute standard of quality, innovation and service, Flex Films enjoys the largest market share of PET Films in Russia. We are determined to continue the tradition, offering nothing short of the best to our customers that facilitate their business and sustainability goals.",
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
                                      text: 'Junaid Iqbal Khan',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text:
                                          '                                                     General Director - Flex Films Russia',
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
            width: 270,
            height: 50,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Center(
                child: InkWell(
              onTap: () {
                MoreAbout();
              },
              child: Text(
                'MORE ABOUT JUNAID IQBAL KHAN>>',
                style: TextStyle(fontSize: 14, color: Colors.blue),
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
                      text: 'Russia ',
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
                  'FLEX FILMS RUS LLC',
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
                  'Polymeric Films that offer Co-existence of Sustainability & Excellence',
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
                                  text: '30,000 TPA ',
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
                                  text: ' 2.85 meter wide',
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
                                  text: '8,000 TPA',
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
                      builder: (context) => russia1(),
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
                                builder: (context) => russia1(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'DECLARATIONS OF CONFORMITY FOR BARE FILM',
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
                      builder: (context) => russia2(),
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
                                builder: (context) => russia2(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'DECLARATIONS OF CONFORMITY FOR METALIZED FILM',
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
                                      'Bld.1, Pos. 4, Industrialnaya str., Smatovo vil, Stupino, Moscow Region, 142821, Russia.',
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
                            String email = Uri.encodeComponent(
                                "office.russia@flexfilm.com");
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
                                    text: ' office.russia@flexfilm.com',
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
          RussiaMap(),
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
            'Junaid Iqbal Khan',
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
                              text: 'General Director',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '- Flex Films Rus LLC',
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
                      'Junaid Khan began his journey with UFlex almost two decades back and since then there has been no looking back. Over the years, Junaid wore several hats through various business functions and marched his way up the organization to be appointed in 2019 as General Director of the new packaging films venture of Flex Films in Russia.',
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
                      'At UFlex, Junaid started working with the Design, Production, and Sales & Marketing function of the Engineering business at the company’s headquarter plant where he learnt the finer nuances of business operations, financial management and market development.',
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
                      'End of 2011, he went on to oversee international marketing for Packaging Films Business of UFlex at Flex Films Europa in Poland and four years later, moved to Flex Middle East in UAE.',
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
                      'Junaid is credited with developing Russia & CIS markets for UFlex that eventually set the tone for company setting up its Greenfield manufacturing project in Moscow Region. Due to his market insights, conviction and focus to achieve customer satisfaction, Flex Films has evolved to grab the majority market share of BOPET films across Russia and UFlex today is the preferred supplier to the converting industry worldwide.',
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
                      'A production engineer and Post-Graduate in Technology of machine building from Kursk State Technical University, Junaid is currently focused on expanding the global footprint of the Packaging Films Business of UFlex, both in terms of operations as well as market. He spearheads a programme that aims at strengthening the company’s reputation of ‘ease of doing businesses’ among all its customers.',
                      textAlign: TextAlign.justify,
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
