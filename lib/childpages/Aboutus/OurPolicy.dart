import 'package:flexfilms/childpages/Aboutus/OurPolicy/EnvironmentPolicy.dart';
import 'package:flexfilms/childpages/Aboutus/OurPolicy/QualityPolicy.dart';
import 'package:flexfilms/childpages/Aboutus/OurPolicy/Sustainability.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';

class ourPolicy extends StatefulWidget {
  const ourPolicy({super.key});

  @override
  State<ourPolicy> createState() => _ourPolicyState();
}

class _ourPolicyState extends State<ourPolicy> {
  Map<String, bool> highlight = {
    "Quality": true,
    "Environment": false,
    "Sustainability": false,
  };

  List<Widget> ourPolicyList = <Widget>[
    Quality(),
    Environment(),
    Sustainability(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.ourPolicyindex) {
      case 0:
        setState(() {
          highlight['Quality'] = true;
          highlight['Environment'] = false;
          highlight['Sustainability'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Quality'] = false;
          highlight['Environment'] = true;
          highlight['Sustainability'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Quality'] = false;
          highlight['Environment'] = false;
          highlight['Sustainability'] = true;
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
                      text: 'Our ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'Policy ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.ourPolicyindex = 0;
                      highlight['Quality'] = true;
                      highlight['Environment'] = false;
                      highlight['Sustainability'] = false;
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                Alldata.ourPolicyindex = 0;
                                highlight['Quality'] = true;
                                highlight['Environment'] = false;
                                highlight['Sustainability'] = false;
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
                              Icons.sell,
                              size: 30,
                              color: Colors.blue,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Quality Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: highlight['Quality'] == true
                                ? Colors.blue
                                : Colors.grey,
                            height: 3,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.ourPolicyindex = 1;
                          highlight['Quality'] = false;
                          highlight['Environment'] = true;
                          highlight['Sustainability'] = false;
                        });
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  Alldata.ourPolicyindex = 1;
                                  highlight['Quality'] = false;
                                  highlight['Environment'] = true;
                                  highlight['Sustainability'] = false;
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
                                size: 30,
                                color: Colors.blue,
                              ),
                              shape: CircleBorder(),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Environment Policy',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: highlight['Environment'] == true
                                  ? Colors.blue
                                  : Colors.grey,
                              height: 3,
                              width: 150,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 115),
            child: InkWell(
              onTap: () {
                setState(() {
                  Alldata.ourPolicyindex = 2;
                  highlight['Quality'] = false;
                  highlight['Environment'] = false;
                  highlight['Sustainability'] = true;
                });
              },
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            Alldata.ourPolicyindex = 2;
                            highlight['Quality'] = false;
                            highlight['Environment'] = false;
                            highlight['Sustainability'] = true;
                          });
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 5.0,
                        padding: EdgeInsets.all(25),
                        constraints:
                            BoxConstraints.expand(width: 82, height: 82),
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.leaderboard,
                          size: 30,
                          color: Colors.blue,
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Sustainability',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['Sustainability'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: ourPolicyList[Alldata.ourPolicyindex],
          ),
        ],
      ),
    );
  }
}
