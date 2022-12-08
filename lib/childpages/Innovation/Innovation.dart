import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import '../HomePage/DownGlobalPresence.dart';
import '../HomePage/DownProducts.dart';
import '../HomePage/DownSiteMap.dart';
import '../HomePage/HomeContactUs.dart';
import '../HomePage/LogOut.dart';
import 'Zones/City.dart';
import 'Zones/Desert.dart';
import 'Zones/Farm.dart';
import 'Zones/Forest.dart';
import 'Zones/Hills.dart';
import 'Zones/Swamp.dart';

class Innovation extends StatefulWidget {
  const Innovation({super.key});

  @override
  State<Innovation> createState() => _InnovationState();
}

class _InnovationState extends State<Innovation> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);
  Map<String, bool> highlight = {
    "Forest": true,
    "Farm": false,
    "Hills": false,
    "Swamp": false,
    "Desert": false,
    "City": false,
  };

  List<Widget> InnovationList = <Widget>[
    Forest(),
    Farm(),
    Hills(),
    Swamp(),
    Desert(),
    City(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.InnovationPageIndex) {
      case 0:
        setState(() {
          highlight['Forest'] = true;
          highlight['Farm'] = false;
          highlight['Hills'] = false;
          highlight['Swamp'] = false;
          highlight['Desert'] = false;
          highlight['City'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Forest'] = false;
          highlight['Farm'] = true;
          highlight['Hills'] = false;
          highlight['Swamp'] = false;
          highlight['Desert'] = false;
          highlight['City'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Forest'] = false;
          highlight['Farm'] = false;
          highlight['Hills'] = true;
          highlight['Swamp'] = false;
          highlight['Desert'] = false;
          highlight['City'] = false;
        });
        break;
      case 3:
        setState(() {
          highlight['Forest'] = false;
          highlight['Farm'] = false;
          highlight['Hills'] = false;
          highlight['Swamp'] = true;
          highlight['Desert'] = false;
          highlight['City'] = false;
        });
        break;
      case 4:
        setState(() {
          highlight['Forest'] = false;
          highlight['Farm'] = false;
          highlight['Hills'] = false;
          highlight['Swamp'] = false;
          highlight['Desert'] = true;
          highlight['City'] = false;
        });
        break;
      case 5:
        setState(() {
          highlight['Forest'] = false;
          highlight['Farm'] = false;
          highlight['Hills'] = false;
          highlight['Swamp'] = false;
          highlight['Desert'] = false;
          highlight['City'] = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Wrap(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 1.0,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image:
                      AssetImage("assets/innovations/innovation-header-bg.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.red),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Text(
                      "Innovations",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 5,
                    indent: 10,
                    endIndent: 280,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Wrap(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.home,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                    text: ' > Innovations',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.yellow)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                  child: Wrap(
                children: [
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Innovation is the - ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.blue)),
                        TextSpan(
                            text: 'BUZZ WORD ',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 26)),
                        TextSpan(
                            text: ' @ Flex Films!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.blue)),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                      child: Text(
                        'Innovation to create value added differentiation is our raison d\'être! ',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "At Flex Films you will get a solution that is customized for you. No two substrates that we manufacture are likely to be the same. We ensure that the science of film making delectably compliments the art of converting much to your delight and advantage. Our engineers have a keen eye for detail to address issues such as packaging functionality, aesthetics, barrier properties, brand protection, sustainability among others. In response to these pivotal issues, we have categorized our films in different zones. No matter what your end goal is, we have a film for you!!!",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              )),
            ),
            SingleChildScrollView(
              child: Wrap(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Alldata.InnovationPageIndex = 0;
                        highlight['Forest'] = true;
                        highlight['Farm'] = false;
                        highlight['Hills'] = false;
                        highlight['Swamp'] = false;
                        highlight['Desert'] = false;
                        highlight['City'] = false;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 65,
                                child: CircleAvatar(
                                  radius: 65,
                                  backgroundImage:
                                      AssetImage("assets/home/Forest.png"),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: highlight['Forest'] == true
                                  ? Colors.blue
                                  : Colors.grey,
                              height: 3,
                              width: 180,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Alldata.InnovationPageIndex = 1;
                        highlight['Forest'] = false;
                        highlight['Farm'] = true;
                        highlight['Hills'] = false;
                        highlight['Swamp'] = false;
                        highlight['Desert'] = false;
                        highlight['City'] = false;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 65,
                                child: CircleAvatar(
                                  radius: 65,
                                  backgroundImage:
                                      AssetImage("assets/home/Farm.png"),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: highlight['Farm'] == true
                                  ? Colors.blue
                                  : Colors.grey,
                              height: 3,
                              width: 180,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Alldata.InnovationPageIndex = 2;
                  highlight['Forest'] = false;
                  highlight['Farm'] = false;
                  highlight['Hills'] = true;
                  highlight['Swamp'] = false;
                  highlight['Desert'] = false;
                  highlight['City'] = false;
                });
              },
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 65,
                          child: CircleAvatar(
                            radius: 65,
                            backgroundImage:
                                AssetImage("assets/home/Hills.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['Hills'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 180,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Alldata.InnovationPageIndex = 3;
                  highlight['Forest'] = false;
                  highlight['Farm'] = false;
                  highlight['Hills'] = false;
                  highlight['Swamp'] = true;
                  highlight['Desert'] = false;
                  highlight['City'] = false;
                });
              },
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 65,
                          child: CircleAvatar(
                            radius: 65,
                            backgroundImage:
                                AssetImage("assets/home/Swamp.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['Swamp'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 180,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Alldata.InnovationPageIndex = 4;
                  highlight['Forest'] = false;
                  highlight['Farm'] = false;
                  highlight['Hills'] = false;
                  highlight['Swamp'] = false;
                  highlight['Desert'] = true;
                  highlight['City'] = false;
                });
              },
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 65,
                          child: CircleAvatar(
                            radius: 65,
                            backgroundImage:
                                AssetImage("assets/home/Desert.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['Desert'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 180,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Alldata.InnovationPageIndex = 5;
                  highlight['Forest'] = false;
                  highlight['Farm'] = false;
                  highlight['Hills'] = false;
                  highlight['Swamp'] = false;
                  highlight['Desert'] = false;
                  highlight['City'] = true;
                });
              },
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 65,
                          child: CircleAvatar(
                            radius: 65,
                            backgroundImage: AssetImage("assets/home/City.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['City'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 180,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: InnovationList[Alldata.InnovationPageIndex],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Color.fromARGB(255, 225, 225, 225),
                child: Column(
                  children: [
                    DownSIteMap(),
                    DownProducts(),
                    DownGlobalPresence(),
                    HomeContactUs(),
                    LogOut(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
