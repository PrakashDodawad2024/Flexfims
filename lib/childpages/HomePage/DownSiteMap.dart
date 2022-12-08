import 'package:flexfilms/LandingPages/HomePage.dart';
import 'package:flexfilms/childpages/Aboutus/Aboutus.dart';
import 'package:flexfilms/childpages/Carrears/Carrears.dart';
import 'package:flexfilms/childpages/ContactUs/ContactUs.dart';
import 'package:flexfilms/childpages/GlobalPresence/GlobalPresence.dart';
import 'package:flexfilms/childpages/Innovation/Innovation.dart';
import 'package:flexfilms/childpages/Products/ProductsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../LandingPages/AllData.dart';

class DownSIteMap extends StatefulWidget {
  const DownSIteMap({super.key});

  @override
  State<DownSIteMap> createState() => _DownSIteMapState();
}

class _DownSIteMapState extends State<DownSIteMap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 5),
              child: Text(
                'SITE MAP',
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
                    color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                    height: 2,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: () {
                            Alldata.homepageindex = 0;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          },
                          child: Text(
                            "Home",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 1;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          }),
                          child: Text(
                            "About Us",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          }),
                          child: Text(
                            "Products",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 3;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          }),
                          child: Text(
                            "Innovations",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 4;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          }),
                          child: Text(
                            "Global Presence",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 5;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          }),
                          child: Text(
                            "Careers",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.play_arrow,
                        size: 14,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 6;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          }),
                          child: Text(
                            "Contact Us",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
