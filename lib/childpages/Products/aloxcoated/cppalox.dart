import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CppAlox extends StatefulWidget {
  @override
  State<CppAlox> createState() => _CppAloxState();
}

Map<String, String> bopet = {
  //'text': ' 1. Metallized BOPP Films',
};

class _CppAloxState extends State<CppAlox> {
  String selected = '';
  final List<Map<String, String>> bopetList = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        child: Row(
          children: <Widget>[
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Column(
                        children: bopetList.map((e) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                bopet = e;
                                selected = '${e['text']}';
                              });
                            },
                            child: Center(
                              child: SizedBox(
                                width: 390,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: SizedBox(
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Container(
                                                          color: Colors.blue,
                                                          height: 35,
                                                          width: 3,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .picture_as_pdf_outlined,
                                                        size: 24.0,
                                                        color: selected ==
                                                                '${e['text']}'
                                                            ? Colors.red
                                                            : Colors.blue,
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
                                                                          .red
                                                                      : Colors
                                                                          .blue,
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
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 215, 232, 246),
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
          ],
        ),
      ),
    );
  }
}
