import 'package:flexfilms/childpages/Products/cpp/matt.dart';
import 'package:flexfilms/childpages/Products/cpp/transparent.dart';
import 'package:flexfilms/childpages/Products/cpp/whiteopaque.dart';
import 'package:flexfilms/childpages/Products/pdfCppSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';

class cppFilms extends StatefulWidget {
  const cppFilms({super.key});

  @override
  State<cppFilms> createState() => _cppFilmsState();
}

class _cppFilmsState extends State<cppFilms> {
  Map<String, bool> highlight = {
    "Transparent": true,
    "WhiteOpaque": false,
    "Matt": false,
  };

  List<Widget> CppList = <Widget>[
    Transparent(),
    WhiteOpaque(),
    Matt(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.cppFilmindex) {
      case 0:
        setState(() {
          highlight['Transparent'] = true;
          highlight['WhiteOpaque'] = false;
          highlight['Matt'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Transparent'] = false;
          highlight['WhiteOpaque'] = true;
          highlight['Matt'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Transparent'] = false;
          highlight['WhiteOpaque'] = false;
          highlight['Matt'] = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'CPP ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'Films',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 410,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'We manufacture Cast Polypropylene (CPP) Films under the brand name',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    TextSpan(
                        text: ' FLEXPETTM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                      text: 'Our production capacity for ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                        text: 'FLEXPETTM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                        text:
                            ' films is approximately 11,000 TPA (17.5 million lbs per annum). ',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 395,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'FLEXPETTM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                      text:
                          ' films are available in thickness range 18-200 microns. These films are available in Plain, Heat-Sealable, Metallizable, Polished, Mirror Finished, Embossed Surface, Glossy/ Matte Finish, High Stiffness, Flexible, Clear and Opaque varieties among others.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
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
            child: Row(
              children: [
                SizedBox(
                  width: 275,
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'To view ', style: TextStyle(fontSize: 16)),
                        TextSpan(
                            text: 'FLEXPETTM',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        TextSpan(
                            text:
                                ' films\' performance properties & applications',
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CppSheet(),
                    ));
                  },
                  child: Text('Click here ',
                      style: TextStyle(color: Colors.blue, fontSize: 16)),
                ),
              ],
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
            child: Row(
              children: [
                SizedBox(
                  width: 275,
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'To view & Download ',
                            style: TextStyle(fontSize: 16)),
                        TextSpan(
                            text: 'SAFETY DATA SHEET OF CPP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        TextSpan(
                            text: ' films\'s', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CppSheet(),
                    ));
                  },
                  child: Text('Click here ',
                      style: TextStyle(color: Colors.blue, fontSize: 16)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                child: Center(
                  child: Text(
                    'We manufacture a wide range of CPP films:',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Alldata.cppFilmindex = 0;
                              highlight['Matt'] = false;
                              highlight['Transparent'] = true;
                              highlight['WhiteOpaque'] = false;
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_right,
                                    size: 25,
                                    color: Color.fromARGB(255, 247, 106, 96),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          "Transparent Films",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                highlight['Transparent'] == true
                                                    ? Colors.blue
                                                    : Colors.black,
                                            fontWeight: FontWeight.bold,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['Transparent'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 180,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Alldata.cppFilmindex = 1;
                              highlight['Matt'] = false;
                              highlight['Transparent'] = false;
                              highlight['WhiteOpaque'] = true;
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_right,
                                    size: 25,
                                    color: Color.fromARGB(255, 247, 106, 96),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          "White Opaque Films",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                highlight['WhiteOpaque'] == true
                                                    ? Colors.blue
                                                    : Colors.black,
                                            fontWeight: FontWeight.bold,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['WhiteOpaque'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 180,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Center(
                child: SizedBox(
                  width: 390,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Alldata.cppFilmindex = 2;
                                highlight['Matt'] = true;
                                highlight['Transparent'] = false;
                                highlight['WhiteOpaque'] = false;
                              });
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          120, 8, 8, 8),
                                      child: Icon(
                                        Icons.arrow_right,
                                        size: 28,
                                        color:
                                            Color.fromARGB(255, 247, 106, 96),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Matt Films",
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: highlight['Matt'] == true
                                                  ? Colors.blue
                                                  : Colors.black,
                                              fontWeight: FontWeight.bold,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: highlight['Matt'] == true
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
          Container(
            child: CppList[Alldata.cppFilmindex],
          ),
        ],
      ),
    );
  }
}
