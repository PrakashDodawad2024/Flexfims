import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sea extends StatefulWidget {
  const Sea({super.key});

  @override
  State<Sea> createState() => _SeaState();
}

Map<String, String> market = {
  'text': 'Austalia',
};

class _SeaState extends State<Sea> {
  String selected = '';
  final List<Map<String, String>> MarketList = [
    {
      'text': 'Austalia',
    },
    {
      'text': 'Bangladesh',
    },
    {
      'text': 'China',
    },
    {
      'text': 'HongKong',
    },
    {
      'text': 'Indonesia',
    },
    {
      'text': 'India',
    },
    {
      'text': 'Japan',
    },
    {
      'text': 'Malaysia',
    },
    {
      'text': 'New Zealand',
    },
    {
      'text': 'Nepal',
    },
    {
      'text': 'Pakistan',
    },
    {
      'text': 'Philippines',
    },
    {
      'text': 'Singapore',
    },
    {
      'text': 'Sri Lanka',
    },
    {
      'text': 'Taiwan',
    },
    {
      'text': 'Thailand',
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
