import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Forest extends StatefulWidget {
  const Forest({super.key});

  @override
  State<Forest> createState() => _ForestState();
}

Map<String, String> zoneimage = {
  'image': 'assets/innovations/forest/F-UPR.jpg',
  'text': 'F-UPR Film',
};

class _ForestState extends State<Forest> {
  String selected = 'F-UPR Film';
  final List<Map<String, String>> ForestImageList = [
    {
      'image': 'assets/innovations/forest/F-UPR.jpg',
      'text': 'F-UPR Film',
    },
    {
      'image': 'assets/innovations/forest/F-PGL.jpg',
      'text': 'F-PGL Film',
    },
    {
      'image': 'assets/innovations/forest/F-PAP-BD.jpg',
      'text': 'F-PAP-BD Film',
    },
    {
      'image': 'assets/innovations/forest/F-PLX.jpg',
      'text': 'F-PLX Film',
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
                  'FOREST REGION',
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
                "Going Green is a Way of Life at Flex Films! Sustainability is at the heart of our business strategy and cascades all the way down to our processes and products. Forest Region reaffirms our commitment towards ecological equilibrium showcasing our marquee products that are a tangible contribution towards Circular Economy.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
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
                                                                      ? Color.fromRGBO(
                                                                          33,
                                                                          150,
                                                                          243,
                                                                          1)
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
