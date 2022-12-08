import 'dart:async';

import 'package:flexfilms/childpages/GlobalPresence/indiaPdf/pdf1.dart';
import 'package:flexfilms/childpages/GlobalPresence/map/uae.dart';
import 'package:flexfilms/childpages/GlobalPresence/uaepdf/pdf1.dart';
import 'package:flexfilms/childpages/GlobalPresence/uaepdf/pdf2.dart';
import 'package:flexfilms/childpages/GlobalPresence/uaepdf/pdf3.dart';
import 'package:flexfilms/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../LandingPages/SecondCarousel.dart';

class flexFilmsUae extends StatefulWidget {
  const flexFilmsUae({super.key});

  @override
  State<flexFilmsUae> createState() => _flexFilmsUaeState();
}

class _flexFilmsUaeState extends State<flexFilmsUae> {
  final List<Map<String, String>> imageList2 = [
    {'image': 'assets/globalpresence/uae/slider-1.jpg'},
    {'image': 'assets/globalpresence/uae/slider-2.jpg'},
    {'image': 'assets/globalpresence/uae/slider-3.jpg'},
    {'image': 'assets/globalpresence/uae/slider-4.jpg'},
    {'image': 'assets/globalpresence/uae/slider-5.jpg'},
    {'image': 'assets/globalpresence/uae/slider-6.jpg'},
    {'image': 'assets/globalpresence/uae/slider-7.jpg'},
    {'image': 'assets/globalpresence/uae/slider-8.jpg'},
    {'image': 'assets/globalpresence/uae/slider-9.jpg'},
    {'image': 'assets/globalpresence/uae/slider-10.jpg'},
    {'image': 'assets/globalpresence/uae/slider-11.jpg'},
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
                image: DecorationImage(
                  image: AssetImage(
                      'assets/globalpresence/uae/Avinash-Kumar-BH-FF-UAE.jpg'),
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
                "Quality, Service & Innovation are the cornerstone of Flex Films & we seek to deliver a better tomorrow as trusted partner to our clients, embodying the value of the entrepreneurial leadership, team work, integrity & social responsibility.",
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
                                      text: 'Avinash Kumar',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text:
                                          '                                                     Business Head - Flex Films UAE',
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
                'MORE ABOUT AVINASH KUMAR>>',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
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
                      text: 'Films Business ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'UAE ',
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
                  'FLEX MIDDLE EAST FZE',
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
                  'Offering Bespoke Polymeric Films To Converters',
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
                                  text: ' 6.7 meter wide',
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
                                  text: '22,000 TPA ',
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
                                  text: ' 2.5 meter wide',
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
                                  text: '5,400 TPA',
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
                      builder: (context) => pdf5(),
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
                                builder: (context) => pdf5(),
                              ));
                            },
                            child: Text(
                              'INTERTEK "ISO 9001:2015" CERTIFICATE',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 42),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
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
                      builder: (context) => pdf6(),
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
                                builder: (context) => pdf6(),
                              ));
                            },
                            child: Text(
                              'INTERTEK "ISO 14001:2015" CERTIFICATE',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
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
                      builder: (context) => pdf7(),
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
                                builder: (context) => pdf7(),
                              ));
                            },
                            child: Text(
                              'INTERTEK "ISO 22000:2018" CERTIFICATE',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
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
                                      ' Post Box 17930, Jebel Ali Free Zone, Dubai, United Arab Emirates (UAE).',
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
                                      fontSize: 15, color: Colors.blue),
                                ),
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
          UaeMap(),
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
            'Avinash Kumar',
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
                              text: '- Flex Middle East FZE',
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
                      'Avinash Kumar has made remarkable progress in the Flexible Packaging Industry for 33 years. He has rich global experience and was based in Middle East as CEO of one of flexible packaging unit after heading various flexible packaging companies across Africa & Europe as General Manager., India Operations. A Commerce graduate, Jagmohan did his diploma in Sales & Marketing from Bhartiya Vidya Bhawan. He comes with a rich experience of four decades in industries like Textile, Steel and Paints and has worked with renowned companies like Berger Paints and Garware earlier. Jagmohan has been associated with UFlex for over 25 years now.',
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
                      'Avinash holds a Master in Science from St Andrews. With a proven track record in managing overall function encompassing Marketing, Production, Finance, MIS, Costing, Budgeting, Commercial and General Management across varied industry verticals, Avinash is a perfect example of an out-of-the-box thinker with innumerable skills in business process re-engineering. He has an extensive experience in conceptualizing and implementing procedures and sustaining the same with profit monitoring and building internal controls.',
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
                      'Avinash has given advantageous results with designing, developing & implementing positive change throughout his journey from his result-oriented experience. As a team player, he has demonstrated a strong commitment to the team success which has built confidence of all the stakeholders in his need-based business plans, strategies & corporate objectives for maximizing profitability and revenue generation while realizing organizational goals.',
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
                      'In his current role, Avinash is the Business Head of Flex Middle East FZE & also holds portfolio of Marketing Head – Africa. In addition to that, he is Director of Flex P Films (Egypt) S.A.E. & Flex Films Russia.',
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
