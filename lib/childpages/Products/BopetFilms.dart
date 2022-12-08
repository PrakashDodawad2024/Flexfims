import 'package:flexfilms/childpages/Products/Bopet/industrialFilms.dart';
import 'package:flexfilms/childpages/Products/Bopet/packagingFilms.dart';
import 'package:flexfilms/childpages/Products/Bopet/sustainableFilms.dart';
import 'package:flexfilms/childpages/Products/Bopet/vintageFilms.dart';
import 'package:flexfilms/childpages/Products/pdfBopetSheet.dart';
import 'package:flexfilms/childpages/Products/pdfBoppSheet.dart';
import 'package:flexfilms/childpages/Products/pdfspecialityProduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';

class bopetFilms extends StatefulWidget {
  const bopetFilms({super.key});

  @override
  State<bopetFilms> createState() => _bopetFilmsState();
}

class _bopetFilmsState extends State<bopetFilms> {
  Map<String, bool> highlight = {
    "Packaging": true,
    "Industrial": false,
    "Vintage": false,
    "Sustainable": false,
  };

  List<Widget> BopetList = <Widget>[
    Packaging(),
    Industrial(),
    Vintage(),
    Sustainable(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.BopetFilmindex) {
      case 0:
        setState(() {
          highlight['Packaging'] = true;
          highlight['Industrial'] = false;
          highlight['Vintage'] = false;
          highlight['Sustainable'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Packaging'] = false;
          highlight['Industrial'] = true;
          highlight['Vintage'] = false;
          highlight['Sustainable'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Packaging'] = false;
          highlight['Industrial'] = false;
          highlight['Vintage'] = true;
          highlight['Sustainable'] = false;
        });
        break;
      case 3:
        setState(() {
          highlight['Packaging'] = false;
          highlight['Industrial'] = false;
          highlight['Vintage'] = false;
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
                      text: 'BOPET ',
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
                            'We manufacture a wide range of Biaxially Oriented Polyethylene Terephthalate (BOPET) Films under the brand name ',
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    TextSpan(
                        text: 'FLEXPETTM',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                            text: 'To view & Download ',
                            style: TextStyle(fontSize: 16)),
                        TextSpan(
                            text: 'SAFETY DATA SHEET OF BOPET',
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
                              Alldata.BopetFilmindex = 0;
                              highlight['Packaging'] = true;
                              highlight['Industrial'] = false;
                              highlight['Vintage'] = false;
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
                              Alldata.BopetFilmindex = 1;
                              highlight['Packaging'] = false;
                              highlight['Industrial'] = true;
                              highlight['Vintage'] = false;
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
                              Alldata.BopetFilmindex = 2;
                              highlight['Packaging'] = false;
                              highlight['Industrial'] = false;
                              highlight['Vintage'] = true;
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
                                          "Vintage Films",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: highlight['Vintage'] == true
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
                        color: highlight['Vintage'] == true
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
                              Alldata.BopetFilmindex = 3;
                              highlight['Packaging'] = false;
                              highlight['Industrial'] = false;
                              highlight['Vintage'] = false;
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
            child: BopetList[Alldata.BopetFilmindex],
          ),
        ],
      ),
    );
  }
}
