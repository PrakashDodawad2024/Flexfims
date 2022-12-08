import 'package:flexfilms/childpages/Products/pdfBoppSheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import 'Bopp/industrial.dart';
import 'Bopp/label.dart';
import 'Bopp/packaging.dart';
import 'Bopp/sustainable.dart';

class boppFilms extends StatefulWidget {
  const boppFilms({super.key});

  @override
  State<boppFilms> createState() => _boppFilmsState();
}

class _boppFilmsState extends State<boppFilms> {
  Map<String, bool> highlight = {
    "Packaging": true,
    "Industrial": false,
    "label": false,
    "Sustainable": false,
  };

  List<Widget> BoppList = <Widget>[
    Packaging(),
    Industrial(),
    label(),
    Sustainable(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.BoppFilmindex) {
      case 0:
        setState(() {
          highlight['Packaging'] = true;
          highlight['Industrial'] = false;
          highlight['label'] = false;
          highlight['Sustainable'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Packaging'] = false;
          highlight['Industrial'] = true;
          highlight['label'] = false;
          highlight['Sustainable'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Packaging'] = false;
          highlight['Industrial'] = false;
          highlight['label'] = true;
          highlight['Sustainable'] = false;
        });
        break;
      case 3:
        setState(() {
          highlight['Packaging'] = false;
          highlight['Industrial'] = false;
          highlight['label'] = false;
          highlight['Sustainable'] = true;
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
                      text: 'BOPP ',
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
            width: 360,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'We manufacture a wide range of Biaxially Oriented Polyethylene Terephthalate (BOPET) Films under the brand name',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    TextSpan(
                        text: ' FLEXPETTM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                      text: ' Our cumulative production capacity of ',
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
                            ' films across the six manufacturing locations globally is 3,50,000 TPA (770 million lbs per annum). ',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 360,
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
                          ' films are available in thickness range 6.5 - 75 microns. These films are available in Plain, Surface Treated, Chemically Coated, Matte, Heat Sealable, Metallizable, Green, Clear, Extra Clear varieties among several others.',
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
                  width: 270,
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'To view', style: TextStyle(fontSize: 16)),
                        TextSpan(
                            text: ' FLEXPETTM',
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
                            text: 'To view & Download',
                            style: TextStyle(fontSize: 16)),
                        TextSpan(
                            text: ' SAFETY DATA SHEET OF BOPET',
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
                    'We manufacture a wide range of BOPET films:',
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
                              Alldata.BoppFilmindex = 0;
                              highlight['Packaging'] = true;
                              highlight['Industrial'] = false;
                              highlight['label'] = false;
                              highlight['Sustainable'] = false;
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_right,
                                    size: 28,
                                    color: Color.fromARGB(255, 247, 106, 96),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "Packaging Films",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                highlight['Packaging'] == true
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
                        color: highlight['Packaging'] == true
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
                              Alldata.BoppFilmindex = 1;
                              highlight['Packaging'] = false;
                              highlight['Industrial'] = true;
                              highlight['label'] = false;
                              highlight['Sustainable'] = false;
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_right,
                                    size: 28,
                                    color: Color.fromARGB(255, 247, 106, 96),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "Industrial Films",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                highlight['Industrial'] == true
                                                    ? Colors.blue
                                                    : Colors.black,
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
                        color: highlight['Industrial'] == true
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
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Alldata.BoppFilmindex = 2;
                              highlight['Packaging'] = false;
                              highlight['Industrial'] = false;
                              highlight['label'] = true;
                              highlight['Sustainable'] = false;
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_right,
                                    size: 28,
                                    color: Color.fromARGB(255, 247, 106, 96),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "label Films",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: highlight['label'] == true
                                                ? Colors.blue
                                                : Colors.black,
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
                        color: highlight['label'] == true
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
                              Alldata.BoppFilmindex = 3;
                              highlight['Packaging'] = false;
                              highlight['Industrial'] = false;
                              highlight['label'] = false;
                              highlight['Sustainable'] = true;
                            });
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_right,
                                    size: 28,
                                    color: Color.fromARGB(255, 247, 106, 96),
                                  ),
                                ),
                                WidgetSpan(
                                  child: SizedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "Sustainable Films",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                highlight['Sustainable'] == true
                                                    ? Colors.blue
                                                    : Colors.black,
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
                        color: highlight['Sustainable'] == true
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
          Container(
            child: BoppList[Alldata.BoppFilmindex],
          ),
        ],
      ),
    );
  }
}
