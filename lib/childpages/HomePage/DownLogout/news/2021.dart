import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class MC2021 extends StatefulWidget {
  const MC2021({super.key});

  @override
  State<MC2021> createState() => _MC2021State();
}

Map<String, String> bopet = {
  'text':
      'AN EXPRESSION OF THANKS OPENS DOORS TO HARMONY, STRONGER TIES & PROSPERITY. ON THANKSGIVING DAY, FLEX FILMS VICE CHAIRMAN & CEO ANANTSHREE CHATURVEDI EXPRESSES HIS GRATITUDE TOWARDS THE PACKAGING INDUSTRY, TO PLASTICSTODAY, FOR ITS UNPARALLELED ROLE IN SERVING BRANDS, CONSUMERS, AND OUR PLANET.',
  'url':
      'https://www.plasticstoday.com/injection-molding/plastics-professionals-express-thanks-diverse-ways/gallery?slide=9'
};

class _MC2021State extends State<MC2021> {
  String selected = '';
  final List<Map<String, String>> bopetList = [
    {
      'text':
          'AN EXPRESSION OF THANKS OPENS DOORS TO HARMONY, STRONGER TIES & PROSPERITY. ON THANKSGIVING DAY, FLEX FILMS VICE CHAIRMAN & CEO ANANTSHREE CHATURVEDI EXPRESSES HIS GRATITUDE TOWARDS THE PACKAGING INDUSTRY, TO PLASTICSTODAY, FOR ITS UNPARALLELED ROLE IN SERVING BRANDS, CONSUMERS, AND OUR PLANET.',
      'url':
          'https://www.plasticstoday.com/injection-molding/plastics-professionals-express-thanks-diverse-ways/gallery?slide=9'
    },
    {
      'text':
          ' IN AN INTERCATION WITH ME PRINTER, ANANTSHREE CHATURVEDI, VICE CHAIRMAN AND CEO, FLEX FILMS INTERNATIONAL, FLEX FILMS TALKS ABOUT THE IMPORTANCE OF FLEX FILMS MIDDLE-EAST FACILITY TO THE UFLEX GROUP. HE ALSO GOES ON TO HIGHLIGHT THE GROUP’S FUTURE PLANS AND FOCUS ON SUSTAINABILITY; AND UNDERSCORES THE FUTURE OF PLASTIC FILMS GIVEN THE GLOBAL CAMPAIGN AGAINST IT.',
      'url':
          'https://meprinter.com/middle-east-holds-a-special-significance-for-uflex-group/'
    },
    {
      'text':
          'ZERO WASTE MOVEMENT IS GAINING PROMINENCE ACROSS THE WORLD WITH NEW PRODUCTS FLOODING IN THE MARKET. FLEX FILMS’ PLANTS ACROSS THE WORLD ARE WORKING TO REDUCE THE DAUNTING 31.5% MISMANAGED PLASTIC WASTE THAT CREATES THE PROBLEM OF PLASTIC POLLUTION ACROSS THE WORLD. ANANTSHREE CHATURVEDI VC & CEO FLEX FILMS INTERNATIONAL TO SHANTANU GUHA RAY FOR THE SUNDAY GUARDIAN.',
      'url':
          'https://www.sundayguardianlive.com/news/trash-turns-treasure-new-plastic-economy'
    },
    {
      'text':
          ' PLASTICS TODAY PODCAST WITH RICK LINGLE, DISCOVER LIMITLESS POSSIBILITIES IN PLASTIC PACKAGING AS ANANTSHREE CHATURVEDI VC & CEO FLEX FILMS INTERNATIONAL REVEALS WHAT LIES AHEAD FOR THE PACKAGING INDUSTRY & UFLEX.',
      'url':
          'https://www.plasticstoday.com/packaging/plastic-possibilities-focus-future-ready-flexible-packaging'
    },
    {
      'text':
          'RIDING THE TIDE OF CHANGE; ANANTSHREE CHATURVEDI VC & CEO FLEX FILMS, TALKS IN A MASTERCLASS WITH NETWORK CAPITAL INSIDER ABOUT HIS EDUCATION, HIS LEARNING FROM FAILURES, SUCCESS STORY, AND THE CHANGE HE ENVISIONS FOR THE POLYMER INDUSTRY IN THE LONG RUN.',
      'url':
          'https://www.networkcapital.tv/course/scaling-international-business-ventures-with-anantshree-chaturvedi'
    },
    {
      'text':
          ' “THE SHIFT IN CONSUMPTION PATTERNS TOWARDS PACKAGED PRODUCTS AND CONSIDERABLE RISE IN E-COMMERCE DEMAND (IN THE MIDDLE EAST REGION) FOR PACKAGED FOOD, BEVERAGES, HEALTHCARE, AND HYGIENE PRODUCTS HAS LED TO INCREASED AND VARIED REQUIREMENTS FOR PACKAGING,” APOORVASHREE CHATURVEDI, GROUP DIRECTOR OF UFLEX LTD, TOLD ARABIAN BUSINESS.',
      'url':
          'https://www.arabianbusiness.com/industries/retail/460623-coronavirus-boosts-middle-east-packaging-material-demand-by-10'
    },
    {
      'text':
          'SPEAKING TO PACKAGINGINSIGHTS, FLEX FILMS INTERNATIONAL VICE CHMN & CEO ANANTSHREE CHATURVEDI SHARES HOW THE COMPANY MANAGED TO EXPAND ITS PRESENCE GLOBALLY WITH DIFFERENT PLANTS AND ADVISES FLEXIBLE PACKAGING COMPANIES LOOKING TO EXPAND INTERNATIONALLY.',
      'url':
          'https://www.packaginginsights.com/video/flex-films-international-uflex-expanding-company-presence-globally-with-new-plastic-film-plants.html'
    },
    {
      'text':
          'APOORVSHREE CHATURVEDI DIRECTOR EU OPERATIONS AND SUSTAINABILITY UFLEX IN HIS INTRACTION WITH ARABIANBUSINESS SAYS, "ONCE THE CPP LINE IS COMMISSIONED, WE ARE CONFIDENT THAT FLEX FILMS MIDDLE EAST WILL BE ABLE TO EXPAND ITS PRODUCT PORTFOLIO AND GAIN A LARGER MARKET SHARE AND WIDE DISTRIBUTION NETWORK IN THE GCC REGION.',
      'url':
          'https://www.arabianbusiness.com/industries/retail/459547-rising-demand-for-packaged-goods-in-gcc-drives-indian-major-uflex-to-plan-major-expansion-at-its-dubai-manufacturing'
    },
    {
      'text':
          '"PANDEMIC TAUGHT US THAT LOCAL SUPPLY MATTERS, AND IF YOU DON’T HAVE LOCAL MANUFACTURERS, THAT SEGMENT SUFFERS" SAID ANANTSHREE CHATURVEDI VICE CHAIRMAN & CEO FLEX FILMS INTERNATIONAL AT THE ET-IBM RESHAPE TOMORROW ROUNDTABLE OF INDUSTRIAL SECTOR CEOS TITLED ‘RACING FROM SURVIVAL TO REVIVAL: INDUSTRIAL PRODUCTS IN 2021 & BEYOND’',
      'url':
          'https://www.timesnownews.com/business-economy/companies/article/digitalise-or-perish/725034'
    },
    {
      'text':
          '"WE SAY GLOBALISATION IS AN EQUALIZER, YOU CAN BUY ANYTHING ANYWHERE AND SUPPLY IT ANYWHERE, BUT THE PANDEMIC TAUGHT US THAT LOCAL SUPLY MATTERS AND IF YOU DON\'T HAVE LOCAL MANUFACTURERS, THAT SEGMENT SUFFERS." SAYS ANANTSHREE CHATURVEDI VICE CHAIRMAN & CEO FLEX FILMS INTERNATIONAL TO THE ECONOMIC TIMES (PRINT)',
      'url':
          'https://www.flexfilm.com/pdf/news/2021/UFlex_Coverage_ET_PG13_200121.pdf'
    },
    {
      'text':
          ' "THE YOUNGER GENERATION IS READY TO PAY A PREMIUM FOR SUSTAINABILITY AS RESPONSIBLE CONSUMPTION AND CLIMATE CHANGE IS A LARGE PART OF THEIR IDENTITY." SAYS ANANTSHREE CHATURVEDI VICE CHAIRMAN & CEO FLEX FILMS INTERNATIONAL TO SUCHETANA RAY IN HER ARTICLE \'RESUMING THE BATTLE AGAINST PLASTICS\' IN THE ECONOMIC TIMES (ONLINE).',
      'url':
          'https://economictimes.indiatimes.com/resuming-the-battle-against-plastics/articleshow/80228563.cms'
    },
    {
      'text':
          ' "THE YOUNGER GENERATION IS READY TO PAY A PREMIUM FOR SUSTAINABILITY AS RESPONSIBLE CONSUMPTION AND CLIMATE CHANGE IS A LARGE PART OF THEIR IDENTITY." SAYS ANANTSHREE CHATURVEDI VICE CHAIRMAN & CEO FLEX FILMS INTERNATIONAL TO SUCHETANA RAY IN HER ARTICLE \'RESUMING THE BATTLE AGAINST PLASTICS\' IN THE ECONOMIC TIMES (PRINT)',
      'url':
          'https://www.flexfilm.com/pdf/news/2021/UFlex_Coverage_ET_PG7_120121.pdf'
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
              "Media Coverage - 2021",
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
