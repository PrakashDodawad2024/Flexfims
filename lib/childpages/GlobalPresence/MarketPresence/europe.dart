import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Europe extends StatefulWidget {
  const Europe({super.key});

  @override
  State<Europe> createState() => _EuropeState();
}

Map<String, String> market = {
  'text': 'Austria',
};

class _EuropeState extends State<Europe> {
  String selected = '';
  final List<Map<String, String>> MarketList = [
    {
      'text': 'Austria',
    },
    {
      'text': 'Belarus',
    },
    {
      'text': 'Belgium',
    },
    {
      'text': 'Bulgaria',
    },
    {
      'text': 'Croatia',
    },
    {
      'text': 'Czech Republic',
    },
    {
      'text': 'Denmark',
    },
    {
      'text': 'Estonia',
    },
    {
      'text': 'Finland',
    },
    {
      'text': 'France',
    },
    {
      'text': 'Poland',
    },
    {
      'text': 'Germany',
    },
    {
      'text': 'Greece',
    },
    {
      'text': 'Hungary',
    },
    {
      'text': 'Ireland',
    },
    {
      'text': 'Italy',
    },
    {
      'text': 'Kazakistan',
    },
    {
      'text': 'Lithuania',
    },
    {
      'text': 'Latvia',
    },
    {
      'text': 'Luxemburg',
    },
    {
      'text': 'Montenegro',
    },
    {
      'text': 'Netherlands',
    },
    {
      'text': 'Portugal',
    },
    {
      'text': 'Poland',
    },
    {
      'text': 'Russia',
    },
    {
      'text': 'Romania',
    },
    {
      'text': 'Serbia',
    },
    {
      'text': 'Slovakia',
    },
    {
      'text': 'Slovania',
    },
    {
      'text': 'Spain',
    },
    {
      'text': 'Swedan',
    },
    {
      'text': 'Switzerland',
    },
    {
      'text': 'Turkey',
    },
    {
      'text': 'UK',
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
