import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MiddleEast extends StatefulWidget {
  const MiddleEast({super.key});

  @override
  State<MiddleEast> createState() => _MiddleEastState();
}

Map<String, String> market = {
  'text': 'Austria',
};

class _MiddleEastState extends State<MiddleEast> {
  String selected = '';
  final List<Map<String, String>> MarketList = [
    {
      'text': 'Afganistan',
    },
    {
      'text': 'JOrdan',
    },
    {
      'text': 'Baharain',
    },
    {
      'text': 'Kuwait',
    },
    {
      'text': ' Lebanon',
    },
    {
      'text': 'Oman',
    },
    {
      'text': 'Saudi Arabia',
    },
    {
      'text': 'Qatar',
    },
    {
      'text': 'United Arab Emirates',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    Column(
                      children: MarketList.map((e) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              market = e;
                              selected = '${e['text']}';
                            });
                          },
                          child: Center(
                            child: SizedBox(
                              width: 390,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.double_arrow_sharp,
                                                  size: 18.0,
                                                  color: Colors.blue,
                                                ),
                                                Text.rich(
                                                  TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              '    ${e['text']} ',
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          )),
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
    );
  }
}
