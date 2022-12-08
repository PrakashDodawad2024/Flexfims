import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

class MC2022 extends StatefulWidget {
  const MC2022({super.key});

  @override
  State<MC2022> createState() => _MC2022State();
}

Map<String, String> bopet = {
  'text':
      ' AN INTERVIEW OF ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO, FLEX FILMS INTERNATIONAL WITH HONG KONG BASED MAGAZINE FOOD & BEVERAGE ASIA IN APRIL MAY 2022 ISSUE.',
};

class _MC2022State extends State<MC2022> {
  String selected = '';
  final List<Map<String, String>> bopetList = [
    {
      'text':
          ' AN INTERVIEW OF ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO, FLEX FILMS INTERNATIONAL WITH HONG KONG BASED MAGAZINE FOOD & BEVERAGE ASIA IN APRIL MAY 2022 ISSUE.',
      'url':
          'https://www.flexfilm.com/pdf/news/2022/FlexFilms_FBA_Cove_VC_APR_MAY22.pdf'
    },
    {
      'text':
          'ANANTSHREE CHATURVEDI VC & CEO FLEX FILMS INTERNATIONAL ON ‘RESOLVING THE IMMENSE PROBLEM OF PLASTIC WASTE BY 2042’ AT ASEAN FLEXIBLE PLASTIC PACKAGING MANUFACTURING SUMMIT 2022',
      'url': 'https://www.youtube.com/watch?v=2WDxZHQ4g0o'
    },
    {
      'text':
          'AN INTERVIEW OF ANANTSHREE CHATURVEDI VC & CEO FLEX FILMS INTERNATIONAL BY INDIA EDITOR AKANKSHA MEENA PUBLISHED IN LABELS & LABELING',
      'url':
          'https://www.labelsandlabeling.com/features/flex-films-international-sets-five-new-plants'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
            child: Text(
              "Media Coverage - 2022",
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
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
                                              InkWell(
                                                onTap: () async {
                                                  var url = '${e['url']}';
                                                  if (await canLaunch(url)) {
                                                    await launch(url,
                                                        forceWebView: false,
                                                        enableJavaScript:
                                                            false);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                  // Scaffold(
                                                  //     body: SfPdfViewer.asset(
                                                  // "${e['image']}"));
                                                },
                                                child: SizedBox(
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .double_arrow_sharp,
                                                              size: 15,
                                                              color: selected ==
                                                                      '${e['text']}'
                                                                  ? Colors.black
                                                                  : Colors.blue,
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 320,
                                                          child: Text.rich(
                                                            TextSpan(
                                                              children: <
                                                                  TextSpan>[
                                                                TextSpan(
                                                                    text:
                                                                        '    ${e['text']} ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: selected ==
                                                                              '${e['text']}'
                                                                          ? Colors
                                                                              .black
                                                                          : Colors
                                                                              .blue,
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.link,
                                                          size: 25.0,
                                                          color: selected ==
                                                                  '${e['text']}'
                                                              ? Colors.black
                                                              : Colors.blue,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
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
          ),
        ],
      ),
    );
  }
}
