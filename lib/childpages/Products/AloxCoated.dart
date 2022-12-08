import 'package:flexfilms/LandingPages/AllData.dart';
import 'package:flexfilms/childpages/Products/aloxcoated/bopetalox.dart';
import 'package:flexfilms/childpages/Products/aloxcoated/boppalox.dart';
import 'package:flexfilms/childpages/Products/aloxcoated/cppalox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class aloxCoated extends StatefulWidget {
  const aloxCoated({super.key});

  @override
  State<aloxCoated> createState() => _aloxCoatedState();
}

class _aloxCoatedState extends State<aloxCoated> {
  Map<String, bool> highlight = {
    "BopetAlox": true,
    "BoppAlox": false,
    "CppAlox": false,
  };

  List<Widget> aloxCoatedList = <Widget>[
    BopetAlox(),
    BoppAlox(),
    CppAlox(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.aloxFilmindex) {
      case 0:
        setState(() {
          highlight['BopetAlox'] = true;
          highlight['BoppAlox'] = false;
          highlight['CppAlox'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['BopetAlox'] = false;
          highlight['BoppAlox'] = true;
          highlight['CppAlox'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['BopetAlox'] = false;
          highlight['BoppAlox'] = false;
          highlight['CppAlox'] = true;
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
                      text: 'AlOx Coated ',
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
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'AlOx coating is the application of a thin and highly transparent coating of aluminium oxide on packaging films that gives the materials extremely high moisture and gas barrier properties that rival those of aluminium foils and metalized Films. It is the only truly high-barrier flexible packaging material available that is transparent and allows the packaged product to be clearly visible.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'This not only provides a big marketing plus but also facilitates operations like optical scanning/inspection and metal detection during and after the packaging process, something that is not possible with aluminium foils or metalized Films.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'The levels of barrier available from Alox Coated Films are far superior to those provided by other transparent flexible packaging materials like PVDC-based structures and EVOH coextrusions. Furthermore, moisture and gas permeabilities are not affected by high levels of temperature or relative humidity and are independent of the base film thickness thus enabling maximum downgauging of packaging materials.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'An important feature of Alox Coated Films is that they are microwavable, which aluminium foils and metalized Films are not. As they can be retorted as well, this makes them ideally suited for the packaging of processed foods that can be microwave heated or cooked in the pack itself before consumption.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16)),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'AlOx coating is cutting edge technology and only a very select handful of film manufacturers are equipped with AlOx coating capabilities.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
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
                        text: ' FLEXPETTM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    TextSpan(
                      text: ' Transparent High Barrier Polyester Film.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
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
                                Alldata.aloxFilmindex = 0;
                                highlight['BopetAlox'] = true;
                                highlight['BoppAlox'] = false;
                                highlight['CppAlox'] = false;
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
                                              color:
                                                  highlight['BopetAlox'] == true
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
                          color: highlight['BopetAlox'] == true
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
                                Alldata.aloxFilmindex = 1;
                                highlight['BopetAlox'] = false;
                                highlight['BoppAlox'] = true;
                                highlight['CppAlox'] = false;
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
                                                  highlight['BoppAlox'] == true
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
                          color: highlight['BoppAlox'] == true
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
                                Alldata.aloxFilmindex = 2;
                                highlight['BopetAlox'] = false;
                                highlight['BoppAlox'] = false;
                                highlight['CppAlox'] = true;
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
                                                  highlight['CppAlox'] == true
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
                          color: highlight['CppAlox'] == true
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
            child: aloxCoatedList[Alldata.aloxFilmindex],
          ),
        ],
      ),
    );
  }
}
