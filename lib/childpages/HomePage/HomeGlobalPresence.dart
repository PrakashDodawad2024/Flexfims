import 'package:flexfilms/childpages/GlobalPresence/GlobalPresence.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';

class HomeGlobalPresence extends StatefulWidget {
  const HomeGlobalPresence({super.key});

  @override
  State<HomeGlobalPresence> createState() => _HomeGlobalPresenceState();
}

class _HomeGlobalPresenceState extends State<HomeGlobalPresence> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Alldata.homepageindex = 4;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Container(
                child: Wrap(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 1.0,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/home/globalpresence.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Global Presence of Flex Films',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "We have State-of-the-Art film manufacturing facilities in all the 4 major continents Asia, Europe, North America, CIS and Africa.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 15),
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
