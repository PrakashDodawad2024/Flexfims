import 'package:flexfilms/childpages/HomePage/DownLogout/news/2017.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/news/2018.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/news/2019.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/news/2020.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/news/2021.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/news/2022.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../LandingPages/AllData.dart';
import '../../../LandingPages/drawerPage.dart';
import '../DownGlobalPresence.dart';
import '../DownProducts.dart';
import '../DownSiteMap.dart';
import '../HomeContactUs.dart';
import '../LogOut.dart';

class newsFlexFilms extends StatefulWidget {
  @override
  State<newsFlexFilms> createState() => newsFlexFilmsState();
}

class newsFlexFilmsState extends State<newsFlexFilms> {
  Map<String, bool> highlight = {
    "Media Coverage 2022": true,
    "Media Coverage 2021": false,
    "Media Coverage 2020": false,
    "Media Coverage 2019": false,
    "Media Coverage 2018": false,
    "Media Coverage 2017": false,
  };

  List<Widget> MediaList = <Widget>[
    MC2022(),
    MC2021(),
    MC2020(),
    MC2019(),
    MC2018(),
    MC2017(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.Mediaindex) {
      case 0:
        setState(() {
          highlight['Media Coverage 2022'] = true;
          highlight['Media Coverage 2021'] = false;
          highlight['Media Coverage 2020'] = false;
          highlight['Media Coverage 2019'] = false;
          highlight['Media Coverage 2018'] = false;
          highlight['Media Coverage 2017'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Media Coverage 2022'] = false;
          highlight['Media Coverage 2021'] = true;
          highlight['Media Coverage 2020'] = false;
          highlight['Media Coverage 2019'] = false;
          highlight['Media Coverage 2018'] = false;
          highlight['Media Coverage 2017'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Media Coverage 2022'] = false;
          highlight['Media Coverage 2021'] = false;
          highlight['Media Coverage 2020'] = true;
          highlight['Media Coverage 2019'] = false;
          highlight['Media Coverage 2018'] = false;
          highlight['Media Coverage 2017'] = false;
        });
        break;
      case 3:
        setState(() {
          highlight['Media Coverage 2022'] = false;
          highlight['Media Coverage 2021'] = false;
          highlight['Media Coverage 2020'] = false;
          highlight['Media Coverage 2019'] = true;
          highlight['Media Coverage 2018'] = false;
          highlight['Media Coverage 2017'] = false;
        });
        break;
      case 4:
        setState(() {
          highlight['Media Coverage 2022'] = false;
          highlight['Media Coverage 2021'] = false;
          highlight['Media Coverage 2020'] = false;
          highlight['Media Coverage 2019'] = false;
          highlight['Media Coverage 2018'] = true;
          highlight['Media Coverage 2017'] = false;
        });
        break;
      case 5:
        setState(() {
          highlight['Media Coverage 2022'] = false;
          highlight['Media Coverage 2021'] = false;
          highlight['Media Coverage 2020'] = false;
          highlight['Media Coverage 2019'] = false;
          highlight['Media Coverage 2018'] = false;
          highlight['Media Coverage 2017'] = true;
        });
        break;
    }
  }

  final Uri _url = Uri.parse(
      'https://www.labelsandlabeling.com/features/flex-films-international-sets-five-new-plants');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.125,
            width: MediaQuery.of(context).size.width * 1.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              image: DecorationImage(
                image: AssetImage('assets/legal/demo-header-bg.jpg'),
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
                    "News",
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
                                  text: ' > News',
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
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'News ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: '@ Flex Films!',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Container(
                      //     color: highlight['Media Coverage 2022'] == true
                      //         ? Colors.blue
                      //         : Colors.grey,
                      //     height: 50,
                      //     width: 3,
                      //   ),
                      // ),
                      Column(
                        children: [
                          Center(
                            child: SizedBox(
                              width: 360,
                              child: Container(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          Alldata.Mediaindex = 0;
                                          highlight['Media Coverage 2022'] =
                                              true;
                                          highlight['Media Coverage 2021'] =
                                              false;
                                          highlight['Media Coverage 2020'] =
                                              false;
                                          highlight['Media Coverage 2019'] =
                                              false;
                                          highlight['Media Coverage 2018'] =
                                              false;
                                          highlight['Media Coverage 2017'] =
                                              false;
                                        });
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.picture_as_pdf_outlined,
                                                size: 24.0,
                                                color: highlight[
                                                            'Media Coverage 2022'] ==
                                                        true
                                                    ? Colors.red
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Media Coverage-2022',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: highlight[
                                                                    'Media Coverage 2022'] ==
                                                                true
                                                            ? Colors.red
                                                            : Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      120, 8, 8, 8),
                                              child: Icon(
                                                Icons.arrow_right_outlined,
                                                size: 25.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      highlight['Media Coverage 2022'] == true
                                          ? Colors.white
                                          : Color.fromARGB(255, 218, 233, 244),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: SizedBox(
                                width: 360,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          Alldata.Mediaindex = 1;
                                          highlight['Media Coverage 2022'] =
                                              false;
                                          highlight['Media Coverage 2021'] =
                                              true;
                                          highlight['Media Coverage 2020'] =
                                              false;
                                          highlight['Media Coverage 2019'] =
                                              false;
                                          highlight['Media Coverage 2018'] =
                                              false;
                                          highlight['Media Coverage 2017'] =
                                              false;
                                        });
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.picture_as_pdf_outlined,
                                                size: 24.0,
                                                color: highlight[
                                                            'Media Coverage 2021'] ==
                                                        true
                                                    ? Colors.red
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Media Coverage-2021',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: highlight[
                                                                    'Media Coverage 2021'] ==
                                                                true
                                                            ? Colors.red
                                                            : Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      120, 8, 8, 8),
                                              child: Icon(
                                                Icons.arrow_right_outlined,
                                                size: 25.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: highlight['Media Coverage 2021'] == true
                                  ? Colors.white
                                  : Color.fromARGB(255, 218, 233, 244),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: SizedBox(
                                width: 360,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          Alldata.Mediaindex = 2;
                                          highlight['Media Coverage 2022'] =
                                              false;
                                          highlight['Media Coverage 2021'] =
                                              false;
                                          highlight['Media Coverage 2020'] =
                                              true;
                                          highlight['Media Coverage 2019'] =
                                              false;
                                          highlight['Media Coverage 2018'] =
                                              false;
                                          highlight['Media Coverage 2017'] =
                                              false;
                                        });
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.picture_as_pdf_outlined,
                                                size: 24.0,
                                                color: highlight[
                                                            'Media Coverage 2020'] ==
                                                        true
                                                    ? Colors.red
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Media Coverage-2020',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: highlight[
                                                                    'Media Coverage 2020'] ==
                                                                true
                                                            ? Colors.red
                                                            : Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      120, 8, 8, 8),
                                              child: Icon(
                                                Icons.arrow_right_outlined,
                                                size: 25.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: highlight['Media Coverage 2020'] == true
                                  ? Colors.white
                                  : Color.fromARGB(255, 218, 233, 244),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: SizedBox(
                                width: 360,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          Alldata.Mediaindex = 3;
                                          highlight['Media Coverage 2022'] =
                                              false;
                                          highlight['Media Coverage 2021'] =
                                              false;
                                          highlight['Media Coverage 2020'] =
                                              false;
                                          highlight['Media Coverage 2019'] =
                                              true;
                                          highlight['Media Coverage 2018'] =
                                              false;
                                          highlight['Media Coverage 2017'] =
                                              false;
                                        });
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.picture_as_pdf_outlined,
                                                size: 24.0,
                                                color: highlight[
                                                            'Media Coverage 2019'] ==
                                                        true
                                                    ? Colors.red
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Media Coverage-2019',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: highlight[
                                                                    'Media Coverage 2019'] ==
                                                                true
                                                            ? Colors.red
                                                            : Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      120, 8, 8, 8),
                                              child: Icon(
                                                Icons.arrow_right_outlined,
                                                size: 25.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: highlight['Media Coverage 2019'] == true
                                  ? Colors.white
                                  : Color.fromARGB(255, 218, 233, 244),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: SizedBox(
                                width: 360,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          Alldata.Mediaindex = 4;
                                          highlight['Media Coverage 2022'] =
                                              false;
                                          highlight['Media Coverage 2021'] =
                                              false;
                                          highlight['Media Coverage 2020'] =
                                              false;
                                          highlight['Media Coverage 2019'] =
                                              false;
                                          highlight['Media Coverage 2018'] =
                                              true;
                                          highlight['Media Coverage 2017'] =
                                              false;
                                        });
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.picture_as_pdf_outlined,
                                                size: 24.0,
                                                color: highlight[
                                                            'Media Coverage 2018'] ==
                                                        true
                                                    ? Colors.red
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Media Coverage-2018',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: highlight[
                                                                    'Media Coverage 2018'] ==
                                                                true
                                                            ? Colors.red
                                                            : Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      120, 8, 8, 8),
                                              child: Icon(
                                                Icons.arrow_right_outlined,
                                                size: 25.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: highlight['Media Coverage 2018'] == true
                                  ? Colors.white
                                  : Color.fromARGB(255, 218, 233, 244),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: SizedBox(
                                width: 360,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          Alldata.Mediaindex = 5;
                                          highlight['Media Coverage 2022'] =
                                              false;
                                          highlight['Media Coverage 2021'] =
                                              false;
                                          highlight['Media Coverage 2020'] =
                                              false;
                                          highlight['Media Coverage 2019'] =
                                              false;
                                          highlight['Media Coverage 2018'] =
                                              false;
                                          highlight['Media Coverage 2017'] =
                                              true;
                                        });
                                      },
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.picture_as_pdf_outlined,
                                                size: 24.0,
                                                color: highlight[
                                                            'Media Coverage 2017'] ==
                                                        true
                                                    ? Colors.red
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text:
                                                          'Media Coverage-2017',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: highlight[
                                                                    'Media Coverage 2017'] ==
                                                                true
                                                            ? Colors.red
                                                            : Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      120, 8, 8, 8),
                                              child: Icon(
                                                Icons.arrow_right_outlined,
                                                size: 25.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: highlight['Media Coverage 2017'] == true
                                  ? Colors.white
                                  : Color.fromARGB(255, 218, 233, 244),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: MediaList[Alldata.Mediaindex],
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
    );
  }
}
