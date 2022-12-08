import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class MC2019 extends StatefulWidget {
  const MC2019({super.key});

  @override
  State<MC2019> createState() => _MC2019State();
}

Map<String, String> bopet = {
  'text':
      'ANANTSHREE CHATURVEDI EXCLUSIVE INTERVIEW WITH MAHAN HAZARIKA EDITOR OF THE PACKMAN SAY "OUR TARGET IS TO BE THE WORLD’S MOST PREMIUM POLYMER PROCESSING COMPANY"',
  'url':
      'https://thepackman.in/our-target-is-to-be-the-worlds-most-premium-polymer-processing-company-anantshree-chaturvedi/'
};

class _MC2019State extends State<MC2019> {
  String selected = '';
  final List<Map<String, String>> bopetList = [
    {
      'text':
          'ANANTSHREE CHATURVEDI EXCLUSIVE INTERVIEW WITH MAHAN HAZARIKA EDITOR OF THE PACKMAN SAY "OUR TARGET IS TO BE THE WORLD’S MOST PREMIUM POLYMER PROCESSING COMPANY"',
      'url':
          'https://thepackman.in/our-target-is-to-be-the-worlds-most-premium-polymer-processing-company-anantshree-chaturvedi/'
    },
    {
      'text':
          'ANANTSHREE CHATURVEDI EXCLUSIVE INTERVIEW WITH NARESH KHANNA EDITOR OF PACKAGING SOUTH ASIA ABOUT FLEXFILMS’ ASCLEPIUS – CERTIFIED 90% PCR CONTENT BOPET FILMS.',
      'url':
          'https://packagingsouthasia.com/packaging-production/flexfilms-asclepius-certified-90-pcr-content-bopet-films/'
    },
    {
      'text':
          'THE GOVERNMENT AND THE PRIVATE SECTOR NEED TO COLLABORATE AND WORK IN TANDEM TO CREATE A CIRCULAR ECONOMY THAT ENSURES A STEADY TRANSITION TOWARDS GREEN PACKAGING - WRITES ANANTSHREE CHATURVEDI, VICE CHAIRMAN OF FLEX FILMS INTERNATIONAL IN BUSINESSWORLD',
      'url':
          'https://www.businessworld.in/article/Moving-Towards-Sustainable-Packaging-One-Step-At-A-Time/03-06-2019-171330/'
    },
    {
      'text':
          'DR. STEVEN SARGEANT, SR. GM (TECHNOLOGY) FLEX FILMS USA PRESENTED A NEW RESEARCH PAPER INTO THE DEVELOPMENT OF NEW, COST EFFECTIVE, SUBSTRATES SUITABLE FOR OPAQUE AND CLEAR BARRIER APPLICATIONS AT THE RECENTLY HELD ICE TECHNICAL SESSION HOSTED BY AIMCAL IN USA (KENTUCKY).',
      'url': 'https://www.aimcal.org/ice-technical-program.html'
    },
    {
      'text':
          'GOVERNOR OF KENTUCKY THE HONOURABLE MATT BEVIN VISITS UFLEX PLANT IN INDIA - REPORTS APN NEWS',
      'url':
          'https://www.apnnews.com/governor-of-kentuckythehonourablematt-bevin-visits-uflex-plant-in-india/'
    },
    {
      'text':
          'GOVERNOR OF KENTUCKY THE HONOURABLE MATT BEVIN VISITS UFLEX PLANT IN INDIA - REPORTS PACKAGING CONNECTIONS',
      'url':
          'https://www.packagingconnections.com/press-release/governor-kentucky-honourable-matt-bevin-visits-uflex-plant-india.htm'
    },
    {
      'text':
          'US GOVERNOR OF KENTUCKY MATT BEVIN VISITS UFLEX PLANT IN INDIA - REPORTS PACKAGING GATEWAY',
      'url':
          'https://www.packaging-gateway.com/contractors/materials/uflex/pressreleases/us-governor-kentucky-matt-bevin/'
    },
    {
      'text':
          'KENTUCKY GOV MATT BEVIN VISITS UFLEX PLANT IN INDIA - REPORTS SCRABBL',
      'url':
          'https://www.scrabbl.com/kentucky-gov-matt-bevin-visits-uflex-plant-in-india'
    },
    {
      'text':
          'GOVERNOR OF KENTUCKY MATT BEVIN VISITS UFLEX’S NOIDA PLANT - PRINTWEEK INDIA',
      'url':
          'https://www.printweek.in/news/governor-of-kentucky-matt-bevin-visits-uflex%E2%80%99s-noida-plant-41027'
    },
    {
      'text': 'KENTUCKY GOV. VISITS UFLEX INDIA - REPORTS INK WORLD',
      'url':
          'https://www.inkworldmagazine.com/contents/view_breaking-news/2019-01-22/kentucky-gov-visits-uflex-india/32817'
    },
    {
      'text':
          'UFLEX’S NOIDA PLANT HOSTS KENTUCKY GOVERNOR - REPORTS FLEXIBLE PACKAGING',
      'url':
          'https://www.flexpackmag.com/articles/89759-uflexs-noida-plant-hosts-kentucky-governor'
    },
    {
      'text':
          'GOVERNOR OF KENTUCKY THE HONOURABLE MATT BEVIN VISITS UFLEX PLANT IN INDIA - REPORTS FLEXO GLOBALlink',
      'url':
          'https://www.flexoglobal.com/flexonews-2019/uflex-02-governor-of-kentucky-the-honourable-matt-bevin-vistis-uflex-plant-in-india.html'
    },
    {
      'text':
          'GOVERNOR OF KENTUCKY THE HONOURABLE MATT BEVIN VISITS UFLEX PLANT IN INDIA - REPORTS BUSINESSFORTNIGHT',
      'url':
          'http://businessfortnight.com/governor-of-kentucky-the-honourable-matt-bevin-visits-uflex-plant-in-india/'
    },
    {
      'text':
          'GOVERNOR OF KENTUCKY THE HONOURABLE MATT BEVIN VISITS UFLEX PLANT IN INDIA - REPORTS WHATTHEYTHINKlink',
      'url':
          'https://whattheythink.com/news/93467-governor-kentucky-honourable-matt-bevin-visits-uflex-plant-india/'
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
              "Media Coverage - 2019",
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
