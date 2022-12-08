import 'dart:io';
import 'package:android_intent_plus/flag.dart';

import 'package:android_intent_plus/android_intent.dart';
import 'package:flexfilms/childpages/ContactUs/ContactUs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';

class HomeContactUs extends StatefulWidget {
  const HomeContactUs({super.key});

  @override
  State<HomeContactUs> createState() => _HomeContactUsState();
}

class _HomeContactUsState extends State<HomeContactUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                'CONTACT US',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                Alldata.homepageindex = 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Image.asset('assets/home/logo-flexfilms-small.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                'Trendsetter for the Art and Science of Converting!!!',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Container(
              child: Wrap(
                children: [
                  InkWell(
                    onTap: () async {
                      String email =
                          Uri.encodeComponent("enquiry@flexfilm.com");
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
                    child: Container(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.email,
                                size: 18,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                                text: '  Email:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            TextSpan(
                                text: ' enquiry@flexfilm.com ',
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.facebook.com/uflexltd';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/facebook.jpeg'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://twitter.com/uflexltd';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/twitter.png'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.linkedin.com/company/uflexltd';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/linkedin.png'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.youtube.com/c/uflexltdpackaging';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/youtube.png'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.instagram.com/uflexltd/';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/Instagram.jpeg'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.uflexltd.com/blog/';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      //backgroundColor: Colors.black,
                      radius: 20,
                      child: CircleAvatar(
                          radius: 20,
                          child: Image(
                            image: AssetImage('assets/contactus/blog.png'),
                          )),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
