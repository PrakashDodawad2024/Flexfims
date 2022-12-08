import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Swamp extends StatefulWidget {
  const Swamp({super.key});

  @override
  State<Swamp> createState() => _SwampState();
}

Map<String, String> zoneimage = {
  'image': 'assets/innovations/swamp/F-PGX.jpg',
  'text': 'F-PGX Film',
};

class _SwampState extends State<Swamp> {
  String selected = 'F-PGX Film';
  final List<Map<String, String>> ForestImageList = [
    {
      'image': 'assets/innovations/swamp/F-PGX.jpg',
      'text': 'F-PGX Film',
    },
    {
      'image': 'assets/innovations/swamp/F-MES.jpg',
      'text': 'F-MES Film',
    },
    {
      'image': 'assets/innovations/swamp/F-TST-M.jpg',
      'text': 'F-TST/M Film',
    },
    {
      'image': 'assets/innovations/swamp/F-UHB.jpg',
      'text': 'F-UHB Film',
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
                  'SWAMP REGION',
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
                "Swamp Region is an ode to high gas barrier materials that offer end-users improved freshness and date code extensions – A big step contributing towards the raison d'être of flexible packaging!",
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
