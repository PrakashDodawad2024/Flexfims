import 'package:flexfilms/childpages/GlobalPresence/GlobalPresence.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';

class DownGlobalPresence extends StatefulWidget {
  const DownGlobalPresence({super.key});

  @override
  State<DownGlobalPresence> createState() => _DownGlobalPresenceState();
}

class _DownGlobalPresenceState extends State<DownGlobalPresence> {
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
                'GLOBAL PRESENCE',
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
                            Alldata.Globalpageindex = 0;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Global Perspective",
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
                            Alldata.Globalpageindex = 1;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Films Business India",
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
                            Alldata.Globalpageindex = 2;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films UAE",
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
                            Alldata.Globalpageindex = 3;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films Mexico",
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
                            Alldata.Globalpageindex = 4;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films Egypt",
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
                            Alldata.Globalpageindex = 5;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films Poland",
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
                            Alldata.homepageindex = 4;
                            Alldata.Globalpageindex = 6;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films USA",
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
                            Alldata.homepageindex = 4;
                            Alldata.Globalpageindex = 7;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films Russia",
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
                            Alldata.homepageindex = 4;
                            Alldata.Globalpageindex = 8;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films Hungary",
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
                            Alldata.homepageindex = 4;
                            Alldata.Globalpageindex = 9;
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Flex Films Nigeria",
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
