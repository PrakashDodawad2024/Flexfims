import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class MC2017 extends StatefulWidget {
  const MC2017({super.key});

  @override
  State<MC2017> createState() => _MC2017State();
}

Map<String, String> bopet = {
  'text':
      'PACKAGING NEEDS OF GEN-NEXT CONSUMERS - OPINION EDITORIAL BY MR. ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO, FLEX FILMS INTERNATIONAL IN THE ECONOMIC TIMES ONLINE',
};

class _MC2017State extends State<MC2017> {
  String selected = '';
  final List<Map<String, String>> bopetList = [
    {
      'text':
          'PACKAGING NEEDS OF GEN-NEXT CONSUMERS - OPINION EDITORIAL BY MR. ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO, FLEX FILMS INTERNATIONAL IN THE ECONOMIC TIMES ONLINE',
      'url':
          'https://retail.economictimes.indiatimes.com/re-tales/packaging-needs-of-gen-next-consumers/2706'
    },
    {
      'text':
          'FLEX FILMS PACKAGES WORLD WIDE PRODUCTS – MR. VIJAY YADAV, BUSINESS HEAD (FLEX FILMS USA) – SPEAKS WITH THE NEWS ENTERPRISE',
      'url':
          'https://www.thenewsenterprise.com/features/fridays_focus/flex-films-packages-world-wide-products/article_21e2ee94-ea2f-50fb-919f-150b737b03ec.html'
    },
    {
      'text': 'FLEX FILMS USA INC. CERTIFIED POST CONSUMER RESIN (PCR) USER',
      'url': 'https://www.flexfilm.com/pdf/usa/Press_Release_PCR.pdf'
    },
    {
      'text':
          ' VIABILITY IS KEY TO THE UFLEX INVESTMENT STRATEGY – MR. ANANTSHREE CHATURVEDI – SPEAKS WITH PACKAGING SOUTH ASIA MAGAZINE',
      'url':
          'https://packagingsouthasia.com/?option=com_zoo&task=item&item_id=682&Itemid=212'
    },
    {
      'text':
          'AFTER SOUTH AMERICA, UFLEX IS ALL SET TO SERVICE ASIA AND BEYOND WITH ITS ACTIVE MODIFIED ATMOSPHERIC PACKAGING SOLUTION FLEXFRESH™ – REPORTS FRESH PLAZA',
      'url':
          'https://www.freshplaza.com/europe/article/181877/India-New-packaging-technologies-for-South-America/'
    },
    {
      'text':
          ' FLEX AMERICAS S.A. DE C.V. MEXICO: SERVING NAFTA AND BEYOND WITH EXCELLENCE! – HARD NEWS (MAGAZINE)',
      'url':
          'https://www.uflexltd.com/blog/flex-americas-s-a-de-c-v-mexico-serving-nafta-and-beyond-with-excellence-hard-news-magazine/'
    },
    {
      'text': ' PACKAGING DEMANDS OF NEXT GENERATION CONSUMERS – KEYNOTE VIDEO',
      'url': 'https://www.youtube.com/watch?v=6NvNuoYXfr4'
    },
    {
      'text':
          ' UFLEX LAUNCHES LOW OPACITY, GOOD GLOSS, WHITE, ANTI-STATIC TWIST WRAP POLYESTER FILM – REPORTS PACKAGING EUROPE',
      'url':
          'https://packagingeurope.com/uflex-launches-low-opacity-good-gloss-white-anti-static-twist-wrap-polyester-film/6655.article'
    },
    {
      'text':
          'UFLEX DEVELOPS SPECIALTY POLYMERIC FILM TO REPLACE BIAXIALLY ORIENTED POLYAMIDE (NYLON) FILM – REPORTS PACKAGING EUROPE',
      'url':
          'https://packagingeurope.com/uflex-develops-speciality-polymeric-film-to-replace-bi-axially-oriented-polyamide-film/2660.article'
    },
    {
      'text':
          'FLEXIBLE PACKAGING BY UFLEX HELPS INDIAN PAPAYAS PENETRATE DUBAI – REPORTS FRESH PLAZA',
      'url':
          'https://www.freshplaza.com/europe/article/178014/Flexible-packaging-helps-Indian-papayas-penetrate-Dubai/'
    },
    {
      'text': ' UFLEX REPORTS GRAVURE CELL OPTIMIZATION – REPORTS PFFC ONLINE',
      'url':
          'https://www.pffc-online.com/news/14544-uflex-reports-gravure-cell-optimization'
    },
    {
      'text':
          'UFLEX’S INTERPACK BOOTH BOASTED OF NEW FLEXIBLE FILMS AND APPLICATIONS – PRINT WEEK INDIA',
      'url':
          'https://www.printweek.in/news/uflex-interpack-booth-boasted-flexible-films-applications-25046'
    },
    {
      'text':
          'ANANTSHREE CHATURVEDI: “WE CAN SUPPLY FILMS TO ANY PART OF THE WORLD WITHIN TWO WEEKS” – PRINT WEEK INDIA',
      'url':
          'https://www.printweek.in/features/anantshree-chaturvedi-supply-films-world-weeks-24731'
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
              "Media Coverage - 2017",
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
