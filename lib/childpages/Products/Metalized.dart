import 'package:flexfilms/childpages/Products/metalized/bopetmetal.dart';
import 'package:flexfilms/childpages/Products/metalized/boppmetal.dart';
import 'package:flexfilms/childpages/Products/metalized/cppmetal.dart';
import 'package:flexfilms/childpages/Products/pdfBoppSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';

class metalized extends StatefulWidget {
  const metalized({super.key});

  @override
  State<metalized> createState() => _metalizedState();
}

class _metalizedState extends State<metalized> {
  Map<String, bool> highlight = {
    "BopetMetal": true,
    "BoppMetal": false,
    "CppMetal": false,
  };

  List<Widget> metalList = <Widget>[
    BopetMetal(),
    BoppMetal(),
    CppMetal(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.metalFilmindex) {
      case 0:
        setState(() {
          highlight['BopetMetal'] = true;
          highlight['BoppMetal'] = false;
          highlight['CppMetal'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['BopetMetal'] = false;
          highlight['BoppMetal'] = true;
          highlight['CppMetal'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['BopetMetal'] = false;
          highlight['BoppMetal'] = false;
          highlight['CppMetal'] = true;
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
                      text: 'Metalized ',
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
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'We manufacture a wide range of metalized Biaxially Oriented Polyethylene Terephthalate (BOPET) Films; Biaxially Oriented Polypropylene (BOPP) Films and Cast Polypropylene (CPP) Films under the brand name',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    TextSpan(
                        text: ' FLEXPETTM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                      text: 'Our cumulative production capacity of ',
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
                            ' films across the six manufacturing locations globally is approximately 1,73,700 TPA (382 million lbs per annum). ',
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
                        text:
                            'FLEXMETPROTECTTM films are available in the following thickness ranges:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.double_arrow,
                            size: 18,
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            child: Text(
                              "6.5 - 75 microns for BOPET;",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.double_arrow,
                            size: 18,
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            child: Text(
                              "8 - 75 microns for BOPP;",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.double_arrow,
                            size: 18,
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            child: Text(
                              "18 - 200 microns for CPP",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'These films demonstrate high barrier against oxygen and water vapour and find extensive use in manufacturing packaging material for products that require extended shelf life, apart from host of applications in the textile and capacitor industries.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  //width: 275,
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
                            text: ' films\' applications',
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BoppSheet(),
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
                    'We manufacture a wide range of Metalized films:',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red, fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Alldata.metalFilmindex = 0;
                                highlight['BopetMetal'] = true;
                                highlight['BoppMetal'] = false;
                                highlight['CppMetal'] = false;
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
                                            "BOPET Films",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: highlight['BopetMetal'] ==
                                                      true
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
                          color: highlight['BopetMetal'] == true
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
                                Alldata.metalFilmindex = 1;
                                highlight['BopetMetal'] = false;
                                highlight['BoppMetal'] = true;
                                highlight['CppMetal'] = false;
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
                                            "BOPP Films",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  highlight['BoppMetal'] == true
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
                          color: highlight['BoppMetal'] == true
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
                                Alldata.metalFilmindex = 2;
                                highlight['BopetMetal'] = false;
                                highlight['BoppMetal'] = false;
                                highlight['CppMetal'] = true;
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
                                            "CPP Films",
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  highlight['CppMetal'] == true
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
                          color: highlight['CppMetal'] == true
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
            child: metalList[Alldata.metalFilmindex],
          ),
        ],
      ),
    );
  }
}
