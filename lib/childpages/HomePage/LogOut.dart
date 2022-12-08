import 'package:flexfilms/childpages/HomePage/DownLogout/groupWebsite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';
import 'DownLogout/LeagalDisclaimer.dart';
import 'DownLogout/News.dart';
import 'DownLogout/SiteMap.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Container(
              child: Wrap(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.copyright,
                            size: 14,
                          ),
                        ),
                        TextSpan(
                            text: '  Flex Films All Rights Reserved.',
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Container(
              alignment: Alignment.centerRight,
              child: Wrap(
                children: [
                  InkWell(
                    onTap: () {
                      Alldata.homepageindex = 7;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                    child: Container(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.exit_to_app_outlined,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                                text: ' News ', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      const url = 'https://www.uflexltd.com/';
                      if (await canLaunch(url)) {
                        await launch(url,
                            forceWebView: false, enableJavaScript: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                      // Alldata.homepageindex = 10;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MyHomePage()),
                      // );
                    },
                    child: Container(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.exit_to_app_outlined,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                                text: ' Group Website ',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Alldata.homepageindex = 8;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                    child: Container(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.exit_to_app_outlined,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                                text: ' Site Map ',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Alldata.homepageindex = 9;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                    child: Container(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.exit_to_app_outlined,
                                size: 16,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                                text: 'Legal Disclaimer ',
                                style: TextStyle(fontSize: 12)),
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
    );
  }
}
