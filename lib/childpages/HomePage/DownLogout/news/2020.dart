import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class MC2020 extends StatefulWidget {
  const MC2020({super.key});

  @override
  State<MC2020> createState() => _MC2020State();
}

Map<String, String> bopet = {
  'text':
      'FOR US, BEING GREEN IS A CONSTANT MINDSET, REGARDLESS OF WHAT MAY CURRENTLY DISTRACT THE INDUSTRY. WE SEE THE FUTURE OF PLASTICS AS BEING MADE FROM RECYCLED MATERIAL, AND MATERIAL THAT DEGRADES OVER TIME INTO BIOMASS - SAYS ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO OF FLEX FILMS INTERNATIONAL TO ET PRIME.',
};

class _MC2020State extends State<MC2020> {
  String selected = '';
  final List<Map<String, String>> bopetList = [
    {
      'text':
          'FOR US, BEING GREEN IS A CONSTANT MINDSET, REGARDLESS OF WHAT MAY CURRENTLY DISTRACT THE INDUSTRY. WE SEE THE FUTURE OF PLASTICS AS BEING MADE FROM RECYCLED MATERIAL, AND MATERIAL THAT DEGRADES OVER TIME INTO BIOMASS - SAYS ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO OF FLEX FILMS INTERNATIONAL TO ET PRIME.',
      'url':
          'https://www.flexfilm.com/pdf/news/2020/VC_FlexFilms_ETPrime_Coverage_Dec_20.pdf'
    },
    {
      'text':
          'WE NEED STRONGER COLLABORATION AMONGST EACH OTHER, SO THAT WE CAN GET OUR RESOURCES TOGETHER TO EDUCATE CONSUMERS ABOUT THEIR CHOICES THEY HAVE AVAILABLE TODAY FOR THEIR SUSTAINABLE FUTURE - SAYS FLEX FILMS VC & CEO ANANTSHREE CHATURVEDI IN AN EXCLUSIVE INTERVIEW WITH UK PUBLICATION ORIENTATE, A PART OF AMI PLASTICS.',
      'url':
          'https://www.flexfilm.com/pdf/news/2020/VC_FlexFilms_Orientate_Inteview_Nov_20.pdf'
    },
    {
      'text':
          '“FLEXFILMS FOCUSES ON FUTURE OF PACKAGING” SAYS ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO OF FLEX FILMS IN AN INTERACTION WITH USA BASED TRADE PUBLICATION LABELS & NARROW WEB.',
      'url':
          'https://www.labelandnarrowweb.com/contents/view_online-exclusives/2020-08-03/Flex%20Films-focuses-on-future-of-packaging/'
    },
    {
      'text':
          ' FLEX FILMS RISES TO HEALTH EMERGENCY IN THE US REGION; SUPPORTS PERSONNEL, PUBLIC & CUSTOMERS - A REPORT BY PAPER, FILM & FOIL CONVERTER (PFFC)',
      'url': 'https://www.pffc-online.com/news/16076-rising-to-the-challenge'
    },
    {
      'text':
          '“FUTURE-PROOFING ANY COMMERCIAL BUSINESS NOW NEEDS TO BE CENTERED AROUND SUSTAINABLE PRODUCTS AND BEING CARBON NEUTRAL” SAYS ANANTSHREE CHATURVEDI, VICE CHAIRMAN AND CEO OF FLEX FILMS IN AN INTERACTION WITH FORBES INDIA.',
      'url':
          'https://www.forbesindia.com/article/coronavirus/how-has-covid19-affected-indias-progress-with-sdgs/59899/1'
    },
    {
      'text':
          ' ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO OF FLEX FILMS INTERNATIONAL INTERACTS WITH QUARTZ ABOUT HOW INDIAN PACKAGING SOLUTIONS MAJOR UFLEX ATTRIBUTES ITS LEADERSHIP IN THE SEGMENT TO A RELENTLESS FOCUS ON EMPLOYEES.',
      'url':
          'https://qz.com/india/1838726/indian-packaging-giant-uflex-bets-on-upskilling-staff-for-growth'
    },
    {
      'text':
          ' FLEX FILMS WINS 2 SILVER FLEXIBLE PACKAGING AWARDS 2020 FOR SUSTAINABILITY AND SHELF IMPACT - REPORT BY FLEXIBLE PACKAGING ASSOCIATION',
      'url': 'https://www.flexpack.org/achievement-awards/2020'
    },
    {
      'text':
          'FLEX FILMS VC & CEO ANANTSHREE CHATURVEDI ON ASCLEPIUS, THE FIRM’S PLASTIC FILM MADE FROM RECYCLED MATERIALS - REPORT BY NS PACKAGING.',
      'url':
          'https://www.nspackaging.com/analysis/Flex%20Films-ceo-anantshree-chaturvedi-plastic-film/'
    },
    {
      'text':
          ' ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO OF FLEX FILMS INTERNATIONAL IN AN EXCLUSIVE INTERVIEW WITH PCI MAGAZINE SPEAKS ABOUT HOW ADVANCES LIKE THE COMPANY\'S 90% PCR PLASTIC FILM RANGE ASCLEPIUS.',
      'url': 'https://secure.viewer.zmags.com/publication/9828d279#/9828d279/8'
    },
    {
      'text':
          ' INNOVATION, CUSTOMIZATION & SUSTAINABILITY: HOW FLEX FILMS FOCUSES ON U.S. MARKET - REPORT BY JIM CALLARI, PLASTICS TECHNOLOGY',
      'url':
          'https://www.ptonline.com/blog/post/innovation-customization-sustainability-how-flex-films-focuses-on-us-market'
    },
    {
      'text':
          'ANANTSHREE CHATURVEDI, VICE CHAIRMAN & CEO OF FLEX FILMS INTERNATIONAL EXCLUSIVE INTERVIEW WITH RAHUL KUMAR EDITOR OF PRINT WEEK INDIA ABOUT THE "FUTURE OF FILMS, PACKAGING AND PLASTICS"',
      'url':
          'https://www.printweek.in/whatpackaging/newer-food-and-beverage-packaging-ventures-are-the-future-42619'
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
              "Media Coverage - 2020",
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
