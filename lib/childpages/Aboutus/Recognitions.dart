import 'package:flexfilms/childpages/Aboutus/certificateR/Awards.dart';
import 'package:flexfilms/childpages/Aboutus/certificateR/Memberships.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import 'certificateR/Certifications.dart';

class certificateRecognition extends StatefulWidget {
  const certificateRecognition({super.key});

  @override
  State<certificateRecognition> createState() => _certificateRecognitionState();
}

class _certificateRecognitionState extends State<certificateRecognition> {
  Map<String, bool> highlight = {
    "Membership": true,
    "Certification": false,
    "Awards": false,
  };

  List<Widget> certificateList = <Widget>[
    Membership(),
    Certification(),
    Awards(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.certificateFilmindex) {
      case 0:
        setState(() {
          highlight['Membership'] = true;
          highlight['Certification'] = false;
          highlight['Awards'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Membership'] = false;
          highlight['Certification'] = true;
          highlight['Awards'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Membership'] = false;
          highlight['Certification'] = false;
          highlight['Awards'] = true;
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
                      text: 'Certificates & Recognitions',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 25),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            Alldata.certificateFilmindex = 0;
                            highlight['Membership'] = true;
                            highlight['Certification'] = false;
                            highlight['Awards'] = false;
                          });
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 5.0,
                        padding: EdgeInsets.all(25),
                        constraints:
                            BoxConstraints.expand(width: 82, height: 82),
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.sell,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.certificateFilmindex = 0;
                          highlight['Membership'] = true;
                          highlight['Certification'] = false;
                          highlight['Awards'] = false;
                        });
                      },
                      child: Container(
                        child: Text(
                          'Memberships ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['Membership'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 150,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              Alldata.certificateFilmindex = 1;
                              highlight['Membership'] = false;
                              highlight['Certification'] = true;
                              highlight['Awards'] = false;
                            });
                          },
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          elevation: 5.0,
                          padding: EdgeInsets.all(25),
                          constraints:
                              BoxConstraints.expand(width: 82, height: 82),
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.leaderboard,
                            size: 25.0,
                            color: Colors.blue,
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Alldata.certificateFilmindex = 1;
                            highlight['Membership'] = false;
                            highlight['Certification'] = true;
                            highlight['Awards'] = false;
                          });
                        },
                        child: Container(
                          child: Text(
                            'Certifications ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: highlight['Certification'] == true
                              ? Colors.blue
                              : Colors.grey,
                          height: 3,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RawMaterialButton(
                    onPressed: () {
                      setState(() {
                        Alldata.certificateFilmindex = 2;
                        highlight['Membership'] = false;
                        highlight['Certification'] = false;
                        highlight['Awards'] = true;
                      });
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    elevation: 5.0,
                    padding: EdgeInsets.all(25),
                    constraints: BoxConstraints.expand(width: 82, height: 82),
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.leaderboard,
                      size: 25.0,
                      color: Colors.blue,
                    ),
                    shape: CircleBorder(),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.certificateFilmindex = 2;
                      highlight['Membership'] = false;
                      highlight['Certification'] = false;
                      highlight['Awards'] = true;
                    });
                  },
                  child: Container(
                    child: Text(
                      'Awards',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color:
                        highlight['Awards'] == true ? Colors.blue : Colors.grey,
                    height: 3,
                    width: 150,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: certificateList[Alldata.certificateFilmindex],
          ),
        ],
      ),
    );
  }
}
