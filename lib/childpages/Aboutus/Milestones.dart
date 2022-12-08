import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:status_view/status_view.dart';

class milestones extends StatefulWidget {
  const milestones({super.key});

  @override
  State<milestones> createState() => _milestonesState();
}

class _milestonesState extends State<milestones> {
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
                      text: 'Milestones ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'In 1985 the watershed moment for flexible packaging industry in India that saw devising of sachets / unit packs for mouth fresheners, shampoo, candies, tomato ketchup etc. brought about a revolution in the FMCG sector, suddenly bringing brands within the reach of the masses. The evergrowing demand for flexible packaging in India led to the setting up of films manufacturing facilities in Noida, India and subsequently overseas.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 70,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'UFlex in its formative years, thus is credited for the contribution towards shaping the contours of flexible packaging industry in India and still continues to be a market leader.',
                                    style: TextStyle(
                                      fontSize: 15,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 390,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'The evergrowing demand for flexible packaging in India led to the setting up of films manufacturing facilities in Noida, India and subsequently overseas.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
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
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '1994',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 80),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "First ever BOPET(Biaxially Oriented Polyethylene Terephthalate) Film Line set up at UFlex manufacturing plant in India.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '1996',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 80),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "Its first BOPP (Biaxially Oriented Polypropylene) Film Line and second BOPET Film Line commissioned at India plant.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2003',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 60),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "First CPP (Cast Polypropylene) Film Line and second BOPP Film Line commissioned at Indian plant site.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2004',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 25),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "Third BOPET Film Line added at India plant",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2005',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 80),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "UFlex forays beyond India for its Packaging Films venture ‘Flex Films’ and starts its plant in Dubai with a BOPET Film Line.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2007',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 80),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "Flex Films starts production in NAFTA region with the launch of its first BOPET Film Line at its manufacturing plant in Mexico.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2009',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 80),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "Flex Films starts production in NAFTA region with the launch of its first BOPET Film Line at its manufacturing plant in Mexico.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2010',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 40),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "Launches African operations with commencement of a BOPP Film Line in Egypt plant.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2011',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            height: 150,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 40),
                                                child: Icon(
                                                  Icons.keyboard_arrow_right,
                                                  size: 14,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: SizedBox(
                                                  width: 220,
                                                  child: Center(
                                                    child: Text(
                                                      "Egypt plant expands with commissioning of a CPP and BOPET Film Line each.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
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
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 40),
                                              child: Icon(
                                                Icons.keyboard_arrow_right,
                                                size: 14,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: SizedBox(
                                                width: 220,
                                                child: Center(
                                                  child: Text(
                                                    "Mexican plant sees the start of operations of its second BOPET Film Line.",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2013',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 40),
                                            child: Icon(
                                              Icons.keyboard_arrow_right,
                                              size: 14,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: SizedBox(
                                              width: 220,
                                              child: Center(
                                                child: Text(
                                                  "First Transparent High Barrier Alox Metallization Line set up in Mexico.",
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2019',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 135),
                                            child: Icon(
                                              Icons.keyboard_arrow_right,
                                              size: 14,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: SizedBox(
                                              width: 220,
                                              child: Center(
                                                child: Text(
                                                  "Expands its operations in Poland with the commissioning of its second BOPET Line. With this commissioning, Flex Films becomes the largest BOPET manufacturer in European Union.",
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                          "assets/aboutUs/milestones/milstone-flexfilms.jpg"),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.red,
                          height: 4,
                          width: 380,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '2021',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            width: 250,
                            child: Center(
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 60),
                                            child: Icon(
                                              Icons.keyboard_arrow_right,
                                              size: 14,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: SizedBox(
                                              width: 220,
                                              child: Center(
                                                child: Text(
                                                  "Commissions Flex Films’ first-of-its-kind 10.6 meter wide BOPET packaging films plant at Ogun State in Nigeria.",
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
