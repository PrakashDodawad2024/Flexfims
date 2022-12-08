import 'dart:async';

import 'package:flexfilms/childpages/GlobalPresence/indiaPdf/pdf1.dart';
import 'package:flexfilms/childpages/GlobalPresence/indiaPdf/pdf2.dart';
import 'package:flexfilms/childpages/GlobalPresence/indiaPdf/pdf3.dart';
import 'package:flexfilms/childpages/GlobalPresence/indiaPdf/pdf4.dart';
import 'package:flexfilms/childpages/GlobalPresence/map/india.dart';
import 'package:flexfilms/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../LandingPages/SecondCarousel.dart';

class flexBusinessIndia extends StatefulWidget {
  const flexBusinessIndia({super.key});

  @override
  State<flexBusinessIndia> createState() => _flexBusinessIndiaState();
}

class _flexBusinessIndiaState extends State<flexBusinessIndia> {
  final List<Map<String, String>> imageList2 = [
    {'image': 'assets/globalpresence/secondcarousel/banner-10.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-9.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-8.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-7.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-6.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-5.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-4.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-3.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-2.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-1.jpg'},
    {'image': 'assets/globalpresence/secondcarousel/banner-0.jpg'},
  ];
  @override
  build(BuildContext context) {
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
                      'assets/globalpresence/india/Jagmohan-Mongia-BH-FF-India.jpg'),
                  fit: BoxFit.cover,
                ),
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
                        height: 60,
                        width: 5,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 360,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Jagmohan Mongia',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                      text:
                                          '                                                     Whole Time Director & President, Packaging Films Business (India)',
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
                'MORE ABOUT JAGMOHAN MONGIA>>',
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
                      text: 'Films Business ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'India ',
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
                  'UFLEX Limited (Film Business - India) ',
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
                                  text: 'One',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: ' 6.5 and ',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text: 'Two',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text:
                                      ' Biaxially Oriented Polyethylene Terephthalate (BOPET) Film Line ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text:
                                    ' with a cumulative manufacturing capacity of',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: '58,000 TPA ',
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
                                  text: ' 6.7 meter wide ',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text:
                                      'Biaxially Oriented Polypropylene (BOPP) Film Lines',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text:
                                    ' with a cumulative manufacturing capacity of',
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
                                  text: ' 2.45 meter wide',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              TextSpan(
                                  text: 'Cast Polypropylene (CPP) Film Line',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                text: ' with a cumulative capacity of  ',
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
                                  text: 'Six',
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
                                text: ' with a cumulative capacity of  ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                  text: '40,000 TPA',
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
                      builder: (context) => pdf1(),
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
                                builder: (context) => pdf1(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'BRC SGS "GLOBAL STANDARD FOR PACKAGING MATERIALS" CERTIFICATE',
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
                      builder: (context) => pdf2(),
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
                                builder: (context) => pdf2(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'TÜV RHEINLAND CERT GMBH "ISO 45001:2018" CERTIFICATE',
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
                      builder: (context) => pdf3(),
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
                                builder: (context) => pdf3(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'TÜV RHEINLAND CERT GMBH "ISO 14001:2015" CERTIFICATE',
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
                      builder: (context) => pdf4(),
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
                                builder: (context) => pdf4(),
                              ));
                            },
                            child: SizedBox(
                              width: 310,
                              child: Text(
                                'TÜV RHEINLAND CERT GMBH "ISO 9001:2015" CERTIFICATE',
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
                                      ' Address: UFlex Limited (Films Business) A-1, Sector-60, Noida - 201 301, Uttar Pradesh, India.',
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
                                  text: '+91 (120) 4002121, 3982121',
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
                                  text: ' +91 (120) 2580511, 2580003',
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
          indian(),
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
            'Jagmohan Mongia',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        insetPadding: EdgeInsets.all(12),
        content: Column(
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
                            text: 'Whole Time Director & President, ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Packaging Films Business (India)',
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
                    'Jagmohan Mongia is responsible for the Films Business, India Operations. A Commerce graduate, Jagmohan did his diploma in Sales & Marketing from Bhartiya Vidya Bhawan. He comes with a rich experience of four decades in industries like Textile, Steel and Paints and has worked with renowned companies like Berger Paints and Garware earlier. Jagmohan has been associated with UFlex for over 25 years now.',
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
                    'Jagmohan brings in a strong expertise of Sales & Marketing domain and has a proven track record of business development and building strong sustainable organizations. Under his leadership, Films Business revenue has been consistently growing along with the market share.',
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
                    'He was appointed Whole Time Director of the Company w.e.f. February 11, 2021',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ],
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
