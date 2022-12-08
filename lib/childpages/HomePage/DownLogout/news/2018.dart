import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class MC2018 extends StatefulWidget {
  const MC2018({super.key});

  @override
  State<MC2018> createState() => _MC2018State();
}

Map<String, String> bopet = {
  'text':
      'FLEX FILMS GRANTED US PATENT FOR BREAKTHROUGH BOPET FILM FOR ALU ALU BLISTER PACK - REPORTS INDUSTRY EUROPE',
  'url':
      'https://industryeurope.com/us-patent-granted-to-flexfilms-for-bopet-film-used-for-alu-a/'
};

class _MC2018State extends State<MC2018> {
  String selected = '';
  final List<Map<String, String>> bopetList = [
    {
      'text':
          'FLEX FILMS GRANTED US PATENT FOR BREAKTHROUGH BOPET FILM FOR ALU ALU BLISTER PACK - REPORTS INDUSTRY EUROPE',
      'url':
          'https://industryeurope.com/us-patent-granted-to-flexfilms-for-bopet-film-used-for-alu-a/'
    },
    {
      'text':
          ' US PATENT GRANTED TO FLEX FILMS FOR BREAKTHROUGH BOPET FILM USED FOR ALU ALU BLISTER PACK - REPORTS FLEXO GLOBAL',
      'url':
          'https://www.flexoglobal.com/flexonews-2018/uflex-05-us-patent-granted-to-flexfilms-for-breakthrough-bope-film-used-for-alu-alu-blister-pack.html'
    },
    {
      'text':
          'FLEX FILMS GETS US PATENT FOR ITS BOPET FILM USED FOR ALU-ALU BLISTER PACK - REPORTS PRINTWEEK INDIA',
      'url':
          'https://www.printweek.in/news/flex-films-gets-us-patent-for-its-bopet-film-used-for-alualu-blister-pack-40821'
    },
    {
      'text':
          ' US PATENT GRANTED TO FLEX FILMS FOR BREAKTHROUGH BOPET FILM - REPORTS PACKAGING SOUTH ASIA',
      'url':
          'https://packagingsouthasia.com/type-of-packaging/flexible-packaging/us-patent-granted-to-flexfilms-for-breakthrough-bopet-film/'
    },
    {
      'text':
          ' US PATENT GRANTED TO FLEX FILMS FOR BREAKTHROUGH BOPET FILM - REPORTS THE PACKMAN',
      'url':
          'https://thepackman.in/us-patent-granted-to-flexfilms-for-breakthrough-bopet-film/'
    },
    {
      'text':
          'US PATENT GRANTED TO FLEX FILMS FOR BREAKTHROUGH BOPET FILM USED FOR ALU ALU BLISTER PACK - REPORTS PACKAGING 360',
      'url':
          'https://packaging360.in/news/flexfilms-receives-us-patent-for-breakthrough-bopet-film'
    },
    {
      'text':
          ' UFLEX EXPECTS REVENUE OF AROUND RS 500 CRORE FROM BOPET FILM PATENT - REPORTS CNBC-TV18',
      'url':
          'https://www.cnbctv18.com/videos/infrastructure/uflex-expects-revenue-of-around-rs-500-crore-from-bopet-film-patent-1588471.htm'
    },
    {
      'text':
          'UFLEX JUMPS AFTER ARMS RECEIVES US PATENT FOR PACKAGING FILM - REPORTS BUSINESS STANDARD',
      'url':
          'https://www.business-standard.com/article/news-cm/uflex-jumps-after-arms-receives-us-patent-for-packaging-film-118120400206_1.html'
    },
    {
      'text':
          'US PATENT GRANTED TO FLEX FILMS FOR BREAKTHROUGH BOPET FILM USED FOR ALU-ALU BLISTER PACK - REPORTS PACKAGING GATEWAY',
      'url':
          'https://www.packaging-gateway.com/contractors/materials/uflex/pressreleases/us-patent-granted-to-flexfilms-for-breakthrough-bopet-film-used-for-alu-alu-blister-pack/'
    },
    {
      'text':
          'UFLEX ARM BAGS US PATENT FOR BOPET FILM - REPORTS DALAL STREET INVESTMENT JOURNAL',
      'url':
          'https://www.dsij.in/dsijarticledetail/uflex-arm-bags-us-patent-for-bopet-film-4969'
    },
    {
      'text':
          'US PATENT GRANTED TO FLEX FILMS FOR BREAKTHROUGH BOPET FILM USED FOR ALU ALU BLISTER PACK - REPORTS PACKAGINGCONNECTIONS',
      'url':
          'https://www.packagingconnections.com/press-release/us-patent-granted-flexfilms-breakthrough-bopet-film-used-alu-alu-blister-pack.htm'
    },
    {
      'text':
          ' US PATENT GRANTED TO FLEX FILMS FOR BREAKTHROUGH BOPET FILM USED FOR ALU ALU BLISTER PACK - REPORTS WHAT THEY THINK',
      'url':
          'https://whattheythink.com/news/92909-us-patent-granted-flexfilms-breakthrough-bopet-film-used-alu-alu-blister-pack/'
    },
    {
      'text':
          ' "FLEX FILMS IS AN AMERICAN BUSINESS STORY" – ANANTSHREE CHATUREDI IN A CANDID INTERACTION WITH JIM JOHNSON OF PLASTIC NEWS',
      'url':
          'https://www.plasticsnews.com/article/20181128/NEWS/181129920/flex-films-is-an-american-business-story'
    },
    {
      'text':
          ' BETTING BIG IN PACKAGING – ANANTSHREE CHATURVEDI SPEAKS WITH THE CEO MAGAZINE',
      'url':
          'https://www.theceomagazine.com/executive-interviews/manufacturing/anantshree-chaturvedi/'
    },
    {
      'text':
          'FLEX FILMS UNVEILS VYOM AT PACK EXPO IN CHICAGO – REPORTS PRINTWEEK INDIA',
      'url':
          'https://www.printweek.in/news/flex-films-unveils-vyom-at-pack-expo-in-chicago-40572'
    },
    {
      'text':
          ' FLEXFILMS PRESENTS THE ‘FUTURE OF PACKAGING’ AT PACK EXPO, USA – REPORTS FLEXO GLOBAL',
      'url':
          'https://www.flexoglobal.com/flexonews-2018/uflex-02-flex-films-presents-the-future-of-packaging-at-pack-expo-usa.html'
    },
    {
      'text':
          ' FLEX FILMS PRESENTS THE ‘FUTURE OF PACKAGING’ AT PACK EXPO, USA – REPORTS BUSINESSFORTNIGHT',
      'url':
          'http://businessfortnight.com/flexfilms-presents-the-future-of-packaging-at-pack-expo-usa/'
    },
    {
      'text':
          ' FLEX FILMS PRESENTS THE ‘FUTURE OF PACKAGING’ AT PACK EXPO – REPORTS PACKAGING GATEWAY',
      'url':
          'https://www.packaging-gateway.com/contractors/materials/uflex/pressreleases/flexfilms-future-packaging/'
    },
    {
      'text': ' FLEX FILMS: \'VYOM\' FILM REPORTS HEALTHCARE PACKAGING',
      'url':
          'https://www.healthcarepackaging.com/news/sustainability/press-release/13295456/flexfilms-vyom-film'
    },
    {
      'text':
          'FLEX FILMS PRESENTS THE ‘FUTURE OF PACKAGING’ AT PACK EXPO, USA – REPORTS INDUSTRY EUROPE',
      'url':
          'https://industryeurope.com/flexfilms-presents-the-%E2%80%98future-of-packaging%E2%80%99-at-pack-expo-us/'
    },
    {
      'text':
          ' FLEX FILMS PRESENTS THE \'FUTURE OF PACKAGING\' AT PACK EXPO, USA – REPORTS PACKAGING CONNECTIONS',
      'url':
          'https://www.packagingconnections.com/press-release/flexfilms-presents-future-packaging-pack-expo-usa.htm'
    },
    {
      'text':
          ' FLEX FILMS PRESENTS THE ‘FUTURE OF PACKAGING’ AT PACK EXPO – REPORTS THE PACKMAN',
      'url':
          'https://thepackman.in/flexfilms-presents-the-future-of-packaging-at-pack-expo/'
    },
    {
      'text':
          ' FLEX FILMS PRESENTS THE ‘FUTURE OF PACKAGING’ AT PACK EXPO, USA – REPORTS CORE SECTOR COMMUNIQUE',
      'url':
          'https://www.corecommunique.com/flexfilms-presents-the-future-of-packaging-at-pack-expo-usa/'
    },
    {
      'text': 'HOLOGRAPHY COMES TO ASEPTIC PACKS – REPORTS PACKAGING WORLD',
      'url':
          'https://www.printweek.in/news/flex-films-unveils-vyom-at-pack-expo-in-chicago-40572'
    },
    {
      'text':
          ' TAKING THE PACKAGING FILM PROCUREMENT PROCESS OUT OF THE EIGHTIES– REPORTS PACKAGING EUROPE',
      'url':
          'https://packagingeurope.com/taking-the-packaging-film-procurement-process-out-of-the-eighties/4130.article'
    },
    {
      'text':
          'NEW FLEX FILMS E-COMMERCE WEBSITE "FLEX-BUZZR" – REPORTS PLASTECH',
      'url':
          'https://www.plastech.biz/en/news/New-FlexFilms-e-commerce-Website-FLEX-BuzzR-12980'
    },
    {
      'text':
          'FLEX FILMS FORAYS INTO ONLINE SPACE WITH THE LAUNCH OF ITS E-COMMERCE WEBSITE ‘FLEX-BUZZR’ – REPORTS BUSINESSFORTNIGHT',
      'url':
          'http://businessfortnight.com/flexfilms-forays-into-online-space-with-the-launch-of-its-e-commerce-website-flex-buzzr/'
    },
    {
      'text':
          ' FLEX FILMS LAUNCHES ECOMMERCE WEBSITE FLEX-BUZZR – REPORTS THE PACKMAN',
      'url':
          'https://thepackman.in/flex-films-launches-ecommerce-website-flex-buzzr/'
    },
    {
      'text':
          ' FLEX FILMS MOVES ONLINE WITH LAUNCH OF ECOMMERCE WEBSITE ‘FLEX-BUZZR’ – REPORTS PACKAGING GATEWAY',
      'url':
          'https://www.packaging-gateway.com/contractors/materials/uflex/pressreleases/flexfilms-online-ecommerce/'
    },
    {
      'text':
          ' FLEX FILMS FORAYS INTO ONLINE SPACE WITH THE LAUNCH OF ITS E-COMMERCE WEBSITE ‘FLEX-BUZZR’ TO MARKET ITS ENTIRE RANGE OF FILMS IN EUROPEAN REGION – REPORTS COMPELO',
      'url': 'https://www.bizreport.com/reviews'
    },
    {
      'text':
          ' FLEX FILMS FORAYS INTO ONLINE SPACE WITH THE LAUNCH OF ITS E-COMMERCE WEBSITE FLEX-BUZZR – REPORTS PACKAGING CONNECTIONS',
      'url':
          'https://www.packagingconnections.com/press-release/flexfilms-forays-online-space-launch-its-e-commerce-website-flex-buzzr.htm'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES TWO NEW ADVANCED BOPET FILM - REPORTS FLEXIBLE PACKAGING',
      'url':
          'https://www.flexpackmag.com/articles/89576-flexfilms-releases-new-bopet-bon-films'
    },
    {
      'text':
          ' FLEX FILMS LAUNCHES TWO NEW ADVANCED BOPET FILM - REPORTS COMPELO',
      'url': 'https://www.bizreport.com/reviews'
    },
    {
      'text':
          ' FLEX FILMS LAUNCHES TWO NEW ADVANCED BOPET FILM - REPORTS PACKAGING GATEWAY',
      'url':
          'https://www.packaging-gateway.com/contractors/materials/uflex/pressreleases/flexfilms-bopet-film/'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES TWO NEW ADVANCED BOPET FILM - REPORTS THE PACKMAN',
      'url':
          'https://thepackman.in/flex-films-launches-two-new-advanced-bopet-films/'
    },
    {
      'text':
          ' FLEX FILMS LAUNCHES TWO NEW ADVANCED BOPET FILM - REPORTS INDUSTRY EUROPE',
      'url':
          'https://industryeurope.com/flexfilms-launches-two-new-advanced-bopet-films/'
    },
    {
      'text':
          ' FLEX FILMS LAUNCHES TWO NEW ADVANCED BOPET FILM - REPORTS PACKAGING CONNECTIONS',
      'url':
          'https://www.packagingconnections.com/press-release/flexfilms-launches-two-new-advanced-bopet-film.htm'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS PLASTICS TODAY',
      'url':
          'https://www.plasticstoday.com/packaging/flex-films-usa-debuts-high-end-defect-inspection-system-metalized-film'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS PRINTWEEK INDIA',
      'url':
          'https://www.printweek.in/news/flex-films-launches-web-metalised-surface-inspection-system-40200'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS THE PACKMAN',
      'url':
          'https://thepackman.in/flex-films-launches-web-metalized-surface-inspection-system/'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS INDUSTRY EUROPE',
      'url':
          'https://industryeurope.com/flex-films-introduces-web-metalized-surface-inspection-s/'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS PACKAGING CONNECTIONS',
      'url':
          'https://www.packagingconnections.com/press-release/flex-films-launches-web-metalized-surface-inspection-system.htm'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS COMPELO',
      'url': 'https://www.bizreport.com/reviews'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS WHATTHEYTHINK',
      'url':
          'https://whattheythink.com/news/90924-flex-films-launches-web-metalized-surface-inspection-system/'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS CONVERTER NEWS',
      'url':
          'https://www.converternews.com/flex-films-launches-web-metalized-surface-inspection-system/'
    },
    {
      'text':
          ' THE STATE OF SUSTAINABLE FILMS - DR. STEVE SARGEANT(GM TECHNOLOGY AND R & D) AT FLEX FILMS (USA) INC. SPEAKS WITH FLEXIBLE PACKAGING MAGAZINE',
      'url':
          'https://www.flexpackmag.com/articles/89442-the-state-of-sustainable-films'
    },
    {
      'text':
          ' GLOBAL FILM PROCESSOR SETS SIGHTS ON U.S. GROWTH - PLASTICS TECHNOLOGY WRITES ABOUT FLEX FILMS',
      'url':
          'https://www.ptonline.com/articles/global-film-processor-sets-sights-on-us'
    },
    {
      'text':
          ' \'ABOUT SUSTAINABILITY AND BUSINESS PLANS\' - MR. ANANTSHREE CHATURVEDI SPEAKS WITH PACKAGING NEWS UK',
      'url':
          'https://www.packagingnews.co.uk/features/profile/profile-qa-anantshree-chaturvedi-flex-films-uflex-15-05-2018'
    },
    {
      'text':
          '‘FIVE TRENDS IN FLEXIBLE PACKAGING INDUSTRY THROUGH 2025’ - MR. ANANTSHREE CHATURVEDI WRITES AN OPED FOR FRANCHISE INDIA (INDIAN RETAILER)',
      'url':
          'https://www.indianretailer.com/article/operations/marketing/Five-Trends-in-Flexible-Packaging-Industry-through-2025.a6015'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM WITH SOFT TOUCH - REPORTS PRINTWEEK INDIA',
      'url':
          'https://www.printweek.in/news/flex-films-develops-unique-polyester-film-soft-touch-28978'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS FLEXPET F-STF BOPET FILM - REPORTS LABELS & LABELING',
      'url':
          'https://www.labelsandlabeling.com/news/new-products/flex-films-develops-flexpet-f-stf-bopet-film'
    },
    {
      'text':
          ' UFLEX\'S ARM DEVELOPS UNIQUE POLYESTER FILM - REPORTS INDIAN COMMODITIES',
      'url':
          'http://www.indian-commodity.com/top-news/uflex-s-arm-develops-unique-polyester-film.aspx'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE, DURABLE POLYESTER FILM - REPORTS PACKAGING GATEWAY',
      'url':
          'https://www.packaging-gateway.com/contractors/materials/uflex/pressreleases/unique-polyester-film/'
    },
    {
      'text':
          ' NEW SOFT-TOUCH BOPET FILM FROM FLEX FILMS - REPORTS PACKAGING NEWS',
      'url':
          'https://www.packagingnews.co.uk/news/materials/flexible-plastics/new-soft-touch-bopet-film-flex-films-04-04-2018'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE SOFT BUT STRONG POLYESTER FILM - REPORTS PACKAGING EUROPE',
      'url':
          'https://packagingeurope.com/flex-films-develops-unique-soft-but-strong-polyester-film/5214.article'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM PROVING THAT ‘SOFT IS THE NEW STRONG’ - REPORTS PACKAGING BUSINESS REVIEW',
      'url':
          'http://www.packaging-business-review.com/suppliers/uflex-limited/news/flex-films-develops-unique-polyester-film-proving-that-soft-is-the-new-strong-30024'
    },
    {
      'text':
          ' SOFT IS THE NEW STRONG: FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM - REPORTS THE PACKMAN',
      'url':
          'https://thepackman.in/soft-is-the-new-strong-flex-films-develops-unique-polyester-film/'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM - REPORTS GLOBAL PRINT MONITOR',
      'url':
          'http://www.globalprintmonitor.info/index.php/en/news/industry-news/consumables/31653-flex-films-develops-unique-polyester-film'
    },
    {
      'text':
          '  FLEX FILMS DEVELOPS UNIQUE SOFT-YET-STRONG POLYMER FILM - REPORTS DALAL STREET INVESTMENT JOURNAL',
      'url':
          'https://www.dsij.in/dsijarticledetail/flex-films-develops-unique-soft-yet-strong-polymer-film-1313'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM PROVING THAT ‘SOFT IS THE NEW STRONG’ - REPORTS CONVERTER MAGAZINE',
      'url':
          'https://www.convertermag.com/flex-films-develops-unique-polyester-film-proving-that-soft-is-the-new-strong/'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM - REPORTS PRINT INDUSTRY NEWS',
      'url':
          'https://www.printindustry.news/en/news2/ind-news/consumables/4753-flex-films-develops-unique-polyester-film'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILMPROVING THAT‘SOFT IS THE NEW STRONG’ - REPORTS BUSINESSFORTNIGHT',
      'url':
          'http://businessfortnight.com/flex-filmsdevelops-unique-polyester-filmproving-thatsoft-new-strong/'
    },
    {
      'text':
          ' UNIQUE POLYESTER FILM PROVING THAT ‘SOFT IS THE NEW STRONG’ - REPORTS PLASTEMART',
      'url':
          'http://www.plastemart.com/news-plastics-information/unique-polyester-film-proving-that-%E2%80%98soft-is-the-new-strong%E2%80%99/48717'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS SOFT-TOUCH ROBUST POLYESTER FILM - REPORTS PLASTICS TODAY',
      'url':
          'https://www.plasticstoday.com/packaging/flexfilms-develops-soft-touch-robust-polyester-film'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM PROVING THAT \'SOFT IS THE NEW STRONG\' - REPORTS PACKAGING CONNECTIONS',
      'url':
          'https://www.packagingconnections.com/press-release/flex-films-develops-unique-polyester-film-proving-soft-new-strong.htm'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM TO PROVE ‘SOFT IS THE NEW STRONG’ - REPORTS INDIARETAILING BUREAU',
      'url':
          'https://www.indiaretailing.com/2018/04/03/food/food-service/flex-films-develops-unique-polyester-film-to-prove-soft-is-the-new-strong/'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM PROVING THAT \'SOFT IS THE NEW STRONG\' - REPORTS BUSINESS STANDARD',
      'url':
          'https://www.business-standard.com/article/news-cm/flex-films-develops-unique-polyester-film-proving-that-soft-is-the-new-strong-118040200216_1.html'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM PROVING THAT \'SOFT IS THE NEW STRONG\' - REPORTS CONVERTER NEWS',
      'url':
          'https://www.converternews.com/flex-films-develops-unique-polyester-film-proving-that-soft-is-the-new-strong/'
    },
    {
      'text':
          ' FLEX FILMS DEVELOPS UNIQUE SOFT-YET-STRONG POLYMER FILM - REPORTS POLYESTERTIME',
      'url': 'https://www.polyestertime.com/flex-films-polymer-film/'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS UNIQUE POLYESTER FILM PROVING THAT \'SOFT IS THE NEW STRONG\' - REPORTS WHATTHEYTHINK',
      'url':
          'https://whattheythink.com/news/89380-flex-films-develops-unique-polyester-film-proving-soft-new-strong/'
    },
    {
      'text':
          'FLEX FILMS EUROPA, UFLEX’S EUROPEAN STRONGHOLD - REPORTS WITH PRINTWEEK INDIA SUPPLEMENT MAGAZINE FEBRUARY 2018',
      'url': 'https://www.flexfilm.com/pdf/news/2018/Uflex-PWI-PG12-13.pdf'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES METALLIZED POLYESTER - REPORTS PAPER, FILM & FOIL CONVERTER',
      'url':
          'https://www.pffc-online.com/flexpack/14976-flex-films-launches-metallized-polyester'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES HIGH-BARRIER METALIZED POLYESTER FILM – REPORTS PLASTICS TODAY',
      'url':
          'https://www.plasticstoday.com/packaging/flex-films-launches-high-barrier-metalized-polyester-film'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES HIGH-BARRIER METALIZED POLYESTER FILM – REPORTS HEALTHCARE PACKAGING',
      'url':
          'https://www.healthcarepackaging.com/home/press-release/13294378/flex-films-highbarrier-metallized-polyester-film'
    },
    {
      'text':
          'NEW HIGH-BARRIER METALLIZED POLYESTER FILM HAS SUPERIOR METAL ADHESION FOR HARSH ENVIRONMENTS – REPORTS CONVERTING QUARTERLY',
      'url':
          'https://www.convertingquarterly.com//industry-news1/new-high-barrier-metallized-polyester-film-has-superior-metal-adhesion-for-harsh-environments'
    },
    {
      'text':
          'NEW HIGH-BARRIER METALLIZED POLYESTER FILM HAS SUPERIOR METAL ADHESION FOR HARSH ENVIRONMENTS – REPORTS ASSOCIATION OF INTERNATIONAL METALLIZERS, COATERS AND LAMINATORS (AIMCAL)',
      'url': 'http://web.aimcal.org/news/newsarticledisplay.aspx?articleid=534'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES ALL NEW HIGH BARRIER METALLIZED POLYESTER FILM – REPORTS WHAT THEY THINK',
      'url':
          'https://whattheythink.com/news/88589-flex-films-launches-high-barrier-metallized-polyester-film/'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES NEW HIGH BARRIER METALLIZED POLYESTER FILM – REPORTS PACKAGING EUROPE',
      'url':
          'https://packagingeurope.com/flex-films-launches-new-high-barrier-metallized-polyester-film/3325.article'
    },
    {
      'text':
          'FLEX FILMS INTRODUCES NEW HIGH BARRIER METALLIZED POLYESTER FILM – REPORTS PACKAGING BUSINESS REVIEW',
      'url':
          'http://packagingmaterials.packaging-business-review.com/news/flex-films-introduces-new-high-barrier-metallized-polyester-film-050218-6046021'
    },
    {
      'text':
          'FLEX FILMS INTRODUCES NEW HIGH BARRIER METALLIZED POLYESTER FILM – REPORTS PACKAGING SOUTH ASIA',
      'url':
          'https://packagingsouthasia.com/?option=com_zoo&task=item&item_id=1155&Itemid=259'
    },
    {
      'text':
          'FLEX FILMS РАЗРАБОТАЛА ПЛЁНКУ FLEXMETPROTECT F-HMB – REPORTS UNIPACK.RU',
      'url': 'https://news.unipack.ru/68910/'
    },
    {
      'text':
          'UFLEX’S USA PLANT LAUNCHES HIGH-BARRIER METALLISED POLYESTER FILM – REPORTS PRINTWEEK INDIA',
      'url':
          'https://www.printweek.in/news/uflex-usa-plant-launches-barrier-metallised-polyester-film-27975'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES ALL NEW HIGH BARRIER METALLISED FILM – REPORTS ME PRINTER',
      'url':
          'http://www.meprinter.com/news/5707/Flex-Films-Launches-all-New-High-Barrier-Metallised-Film'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES ALL NEW HIGH BARRIER METALLIZED FILM – REPORTS PACKAGING TODAY',
      'url':
          'https://www.packagingtoday.co.uk/news/newsflex-films-launches-all-new-high-barrier-metallized-film-6046633'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES ALL NEW HIGH BARRIER METALLIZED FILM – REPORTS CONVERTING TODAY',
      'url':
          'https://www.convertingtoday.co.uk/news/newsflex-films-launches-all-new-high-barrier-metallized-film-6046633'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES HIGH BARRIER METALLIZED POLYESTER FILM – REPORTS LABELS & LABELING',
      'url':
          'https://www.labelsandlabeling.com/news/new-products/flex-films-launches-high-barrier-metallized-polyester-film'
    },
    {
      'text':
          'FLEX FILMS DEVELOPS NEW METALLISED POLYESTER FILM – REPORTS PACKAGING GATEWAY',
      'url':
          'https://www.packaging-gateway.com/news/flex-films-develops-new-metallised-polyester-film/'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES ALL NEW HIGH BARRIER METALLIZED POLYESTER FILM – REPORTS POLYESTERTIME',
      'url':
          'https://www.polyestertime.com/flex-films-high-barrier-metallized-polyester-film/'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES NEW HIGH BARRIER METALLIZED POLYESTER FILM FOR SUPERIOR FLEXIBLE PACKAGING – REPORTS PLASTICS INDUSTRY NEWS',
      'url': 'https://www.adsalecprj.com/sc/'
    },
    {
      'text':
          'FLEX FILMS LAUNCHES NEW HIGH BARRIER METALLIZED POLYESTER FILM - REPORTS PACKAGING EUROPE FROM UNITED KINGDOM',
      'url':
          'https://packagingeurope.com/flex-films-launches-new-high-barrier-metallized-polyester-film/3325.article'
    },
    {
      'text':
          'FLEX FILMS TALKS SUSTAINABILITY TRENDS AND CHALLENGES - REPORTS SMITHERS PIRA',
      'url':
          'https://www.sustainability-in-packaging.com/sustainability-in-packaging-us'
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
              "Media Coverage - 2018",
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
