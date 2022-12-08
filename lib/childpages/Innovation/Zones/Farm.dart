import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Farm extends StatefulWidget {
  const Farm({super.key});

  @override
  State<Farm> createState() => _FarmState();
}

Map<String, String> zoneimage = {
  'image': 'assets/innovations/Farm/F-ISB.jpg',
  'text': 'F-ISB Film'
};

class _FarmState extends State<Farm> {
  String selected = 'F-ISB Film';
  final List<Map<String, String>> ForestImageList = [
    {'image': 'assets/innovations/Farm/F-ISB.jpg', 'text': 'F-ISB Film'},
    {'image': 'assets/innovations/Farm/F-HSP.jpg', 'text': 'F-HSP Film'},
    {
      'image': 'assets/innovations/Farm/F-PCR.jpg',
      'text': 'F-PCR Film',
    },
    {
      'image': 'assets/innovations/Farm/F-CLR-M.jpg',
      'text': 'F-CLR-M Film',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
              child: Center(
                child: Text(
                  'FARM REGION',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Farm Region represents comprehensive substrate replacement opportunities for converters and end-users. New ideas mooted here will spur a lot of good discussion about the real art and science of converting!",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'NOTE-',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.red)),
                  TextSpan(
                      text:
                          'Three grades in this area have one or multiple global patent applications assignable to Flex Films.',
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: [
                            Column(
                              children: ForestImageList.map((e) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      zoneimage = e;
                                      selected = '${e['text']}';
                                    });
                                  },
                                  child: Center(
                                    child: SizedBox(
                                      width: 364,
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .picture_as_pdf_outlined,
                                                        size: 24.0,
                                                        color: selected ==
                                                                '${e['text']}'
                                                            ? Colors.red
                                                            : Colors.black,
                                                      ),
                                                      Text.rich(
                                                        TextSpan(
                                                          children: <TextSpan>[
                                                            TextSpan(
                                                                text:
                                                                    '    ${e['text']} ',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: selected ==
                                                                          '${e['text']}'
                                                                      ? Colors
                                                                          .blue
                                                                      : Colors
                                                                          .black,
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Icon(
                                                    Icons.arrow_right_outlined,
                                                    size: 25.0,
                                                    color: selected ==
                                                            '${e['text']}'
                                                        ? Colors.blue
                                                        : Colors.black,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  color:
                                                      selected == '${e['text']}'
                                                          ? Colors.blue
                                                          : Colors.black,
                                                  height: 3,
                                                  width: 380,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 0),
              child: Center(
                child: Text(
                  '${zoneimage['text']}',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 1.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              // image: DecorationImage(
              //   image: NetworkImage("${zoneimage['image']}"),
              //   fit: BoxFit.fitWidth,
              // ),
            ),
            child: Image.asset("${zoneimage['image']}"),
          ),
        ],
      ),
    );
  }
}
