import 'dart:async';

import 'package:flexfilms/childpages/GlobalPresence/map/nigeria.dart';
import 'package:flexfilms/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../LandingPages/SecondCarousel.dart';

class flexFilmsNigeria extends StatefulWidget {
  const flexFilmsNigeria({super.key});

  @override
  State<flexFilmsNigeria> createState() => _flexFilmsNigeriaState();
}

class _flexFilmsNigeriaState extends State<flexFilmsNigeria> {
  final List<Map<String, String>> imageList2 = [
    {'image': 'assets/globalpresence/nigeria/slider-0.jpg'},
    {'image': 'assets/globalpresence/nigeria/slider-1.jpg'},
    {'image': 'assets/globalpresence/nigeria/slider-2.jpg'},
    {'image': 'assets/globalpresence/nigeria/slider-3.jpg'},
    {'image': 'assets/globalpresence/nigeria/slider-4.jpg'},
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
                      'assets/globalpresence/nigeria/Sushil_Ramchandani-BH-FF-Nigeria.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Card(
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
                                        text: 'Sushil Ramchandani',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text:
                                            '                                                     President - Flex Films Nigeria',
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
                'MORE ABOUT SUSHIL RAMCHANDNI>>',
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
                      text: 'Nigeria ',
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
                  'Flex Films Africa Pvt. Ltd.',
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
                child: Card(
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
                                    text: ' 10.6 meter wide',
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
                                    text: '45,000 TPA ',
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
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Card(
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
                                    text: '15,000 TPA',
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
              ),
            ],
          ),
          Container(
            width: 340,
            height: 30,

            margin: EdgeInsets.all(10),
            // padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Center(
                child: InkWell(
              onTap: () async {
                const url = 'https://youtu.be/fJLDBYALyfM';
                if (await canLaunch(url)) {
                  await launch(url,
                      forceWebView: false, enableJavaScript: false);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                'CLICK HERE TO VIEW Nigeria PLANT VIDEOS>>',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.green),
              ),
            )),
            decoration: BoxDecoration(
              color: Colors.green,
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
                                  text: 'Address: ',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Head Office: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text:
                                      'Skipper House, Second Floor, Plot E1 Ligali Ayorinde Street, Victoria Island, Lagos, Nigeria',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Works:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text:
                                      'Plan No. IJC 354(OG), Within 1 KM Corridor Acquisition, Along Lagos/Ibadan Expressway, Ogere, Ikenne, Local Government Area, Ogun State, Nigeria',
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
                                "enquiry.nigeria@flexfilm.com");
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
                                    text: 'enquiry.nigeria@flexfilm.com',
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
          NigeriaMap(),
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
            'Sushil Ramchandani',
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
                              text: 'President',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '- Flex Films Africa Pvt. Ltd',
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
                      'Sushil Ramchandani is an MBA specializing in Marketing from Jodhpur University in addition to M.com in Accountancy and Business Statistics from University of Rajasthan, India.',
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
                      'Sushil’s illustrious career spans over 33 with excellence in handling P&L , General Management , Corporate Finance , Corporate Strategy , Sales, Human Resources , Commercial & project management for leading players in metal and flexible packaging companies of Nigeria. Prior to joining UFlex in 2018, he was associated with ENPEE group for 25 years as Group Managing Director and JOTNA group for 3 years where he was responsible for diversified businesses of the group spanning across 3 continents managing turnover of over 250 million US dollars.',
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
                      'With his impeccable and friendly relationships with industry leaders, bankers, senior government officials, embassy officials in Nigeria, Sushil has been instrumental in Flex Films Africa Private Limited being able to set up a Greenfield project in Ogun State, beating all odds during COVID outbreak and lockdown.',
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
                      'Sushil has had multifarious and successful experience in setting up new businesses, turning around existing businesses, forging business tie ups, devising & executing winning strategies for capturing leadership position in the market simultaneously maximizing business growth. With his experience of the Nigerian markets, he has introduced many new and innovative products in the region, in his previous assignments, resulting in rapid increase in market share of the group companies.',
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
                      'Sushil’s sound business instincts coupled with strong negotiating skills are focused at maximizing business returns, in depth understanding of industry trends, competitor dynamics and consumer delightedness. As a leader, he builds and develops winning teams to embrace change, while seeding the next generation of leaders for the company. In a rapidly changing business landscape, Sushil has embraced change as per the needs and requirement to improve the overall profitability of the organizations and parallelly developing the human capital for the organization.',
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
                      'Sushil has been actively involved with many industrial bodies in Nigeria and was Chairman of Metal Packaging Manufacturers Association of Nigeria, Vice Chairman of AMPISEN and Committee member of Indian Professional Forum.',
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
