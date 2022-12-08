import 'package:flexfilms/childpages/Products/speciality/BopetSpeciality.dart';
import 'package:flexfilms/childpages/Products/speciality/BoppSpeciality.dart';
import 'package:flexfilms/childpages/Products/speciality/CppSpeciality.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';

class speciality extends StatefulWidget {
  const speciality({super.key});

  @override
  State<speciality> createState() => _specialityState();
}

class _specialityState extends State<speciality> {
  Map<String, bool> highlight = {
    "BopetSpeciality": true,
    "BoppSpecialty": false,
    "CppSpeciality": false,
  };

  List<Widget> specialityList = <Widget>[
    BopetSpeciality(),
    BoppSpecialty(),
    CppSpeciality(),
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
          highlight['BopetSpeciality'] = true;
          highlight['BoppSpecialty'] = false;
          highlight['CppSpeciality'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['BopetSpeciality'] = false;
          highlight['BoppSpecialty'] = true;
          highlight['CppSpeciality'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['BopetSpeciality'] = false;
          highlight['BoppSpecialty'] = false;
          highlight['CppSpeciality'] = true;
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
                      text: 'Speciality ',
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
                'Our wide range of Specialty Films brings about the real value addition for the convertors by enhancing the quality and functionality of the ensuing packaging making it a win-win for brands and consumers alike.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
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
                                Alldata.specialityFilmindex = 0;
                                highlight['BopetSpeciality'] = true;
                                highlight['BoppSpecialty'] = false;
                                highlight['CppSpeciality'] = false;
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
                                              color: highlight[
                                                          'BopetSpeciality'] ==
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
                          color: highlight['BopetSpeciality'] == true
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
                                Alldata.specialityFilmindex = 1;
                                highlight['BopetSpeciality'] = false;
                                highlight['BoppSpecialty'] = true;
                                highlight['CppSpeciality'] = false;
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
                                                  highlight['BoppSpecialty'] ==
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
                          color: highlight['BoppSpecialty'] == true
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
                                Alldata.specialityFilmindex = 2;
                                highlight['BopetSpeciality'] = false;
                                highlight['BoppSpecialty'] = false;
                                highlight['CppSpeciality'] = true;
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
                                                  highlight['CppSpeciality'] ==
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
                          color: highlight['CppSpeciality'] == true
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
            child: specialityList[Alldata.specialityFilmindex],
          ),
        ],
      ),
    );
  }
}
