import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';
import '../Innovation/Innovation.dart';

class HomeInnovation extends StatefulWidget {
  const HomeInnovation({super.key});

  @override
  State<HomeInnovation> createState() => _HomeInnovationState();
}

class _HomeInnovationState extends State<HomeInnovation> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                  child: Container(
                      child: Wrap(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Innovation is the - ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            TextSpan(
                                text: 'BUZZ WORD ',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22)),
                            TextSpan(
                                text: ' @ Flex  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        ),
                      ),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Films!  ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "Innovation to create value added differentiation is our raison d'être!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "At Flex Films you will get a solution that is customized for you. No two substrates that we manufacture are likely to be the same. We ensure that the science of film making delectably compliments the art of converting much to your delight and advantage. Our engineers have a keen eye for detail to address issues such as packaging functionality, aesthetics, barrier properties, brand protection, sustainability among others. In response to these pivotal issues, we have categorized our films in different zones. No matter what your end goal is, we have a film for you!!!",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Alldata.homepageindex = 3;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          },
                          onHover: (value) {
                            print(value);
                            if (value) {
                              setState(() {
                                elevation = 20.0;
                                scale = 2.0;
                                translate = Offset(20, 20);
                              });
                            } else {
                              setState(() {
                                elevation = 4.0;
                                scale = 1.0;
                                translate = Offset(0, 0);
                              });
                            }
                          },
                          child: Transform.translate(
                            offset: translate,
                            child: Transform.scale(
                              scale: scale,
                              child: Material(
                                elevation: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 203,
                                  child: CircleAvatar(
                                    radius: 250,
                                    backgroundImage:
                                        AssetImage("assets/home/Forest.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Alldata.homepageindex = 3;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          },
                          onHover: (value) {
                            print(value);
                            if (value) {
                              setState(() {
                                elevation = 20.0;
                                scale = 2.0;
                                translate = Offset(20, 20);
                              });
                            } else {
                              setState(() {
                                elevation = 4.0;
                                scale = 1.0;
                                translate = Offset(0, 0);
                              });
                            }
                          },
                          child: Transform.translate(
                            offset: translate,
                            child: Transform.scale(
                              scale: scale,
                              child: Material(
                                elevation: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 203,
                                  child: CircleAvatar(
                                    radius: 250,
                                    backgroundImage:
                                        AssetImage("assets/home/Farm.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Alldata.homepageindex = 3;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          },
                          onHover: (value) {
                            print(value);
                            if (value) {
                              setState(() {
                                elevation = 20.0;
                                scale = 2.0;
                                translate = Offset(20, 20);
                              });
                            } else {
                              setState(() {
                                elevation = 4.0;
                                scale = 1.0;
                                translate = Offset(0, 0);
                              });
                            }
                          },
                          child: Transform.translate(
                            offset: translate,
                            child: Transform.scale(
                              scale: scale,
                              child: Material(
                                elevation: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 203,
                                  child: CircleAvatar(
                                    radius: 250,
                                    backgroundImage:
                                        AssetImage("assets/home/Hills.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Alldata.homepageindex = 3;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          },
                          onHover: (value) {
                            print(value);
                            if (value) {
                              setState(() {
                                elevation = 20.0;
                                scale = 2.0;
                                translate = Offset(20, 20);
                              });
                            } else {
                              setState(() {
                                elevation = 4.0;
                                scale = 1.0;
                                translate = Offset(0, 0);
                              });
                            }
                          },
                          child: Transform.translate(
                            offset: translate,
                            child: Transform.scale(
                              scale: scale,
                              child: Material(
                                elevation: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 203,
                                  child: CircleAvatar(
                                    radius: 250,
                                    backgroundImage:
                                        AssetImage("assets/home/Swamp.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Alldata.homepageindex = 3;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          },
                          onHover: (value) {
                            print(value);
                            if (value) {
                              setState(() {
                                elevation = 20.0;
                                scale = 2.0;
                                translate = Offset(20, 20);
                              });
                            } else {
                              setState(() {
                                elevation = 4.0;
                                scale = 1.0;
                                translate = Offset(0, 0);
                              });
                            }
                          },
                          child: Transform.translate(
                            offset: translate,
                            child: Transform.scale(
                              scale: scale,
                              child: Material(
                                elevation: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 203,
                                  child: CircleAvatar(
                                    radius: 250,
                                    backgroundImage:
                                        AssetImage("assets/home/Desert.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Alldata.homepageindex = 3;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          },
                          onHover: (value) {
                            print(value);
                            if (value) {
                              setState(() {
                                elevation = 20.0;
                                scale = 2.0;
                                translate = Offset(20, 20);
                              });
                            } else {
                              setState(() {
                                elevation = 4.0;
                                scale = 1.0;
                                translate = Offset(0, 0);
                              });
                            }
                          },
                          child: Transform.translate(
                            offset: translate,
                            child: Transform.scale(
                              scale: scale,
                              child: Material(
                                elevation: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 203,
                                  child: CircleAvatar(
                                    radius: 250,
                                    backgroundImage:
                                        AssetImage("assets/home/City.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
