import 'package:flexfilms/LandingPages/carousel.dart';
import 'package:flexfilms/childpages/HomePage/websiteCarousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

import '../websitecarousel2.dart';
import '../websitecarousel3.dart';
import '../websitecarousel4.dart';

class GroupWebsite extends StatefulWidget {
  const GroupWebsite({super.key});

  @override
  State<GroupWebsite> createState() => _GroupWebsiteState();
}

Map<String, String> zoneimage = {
  'image': 'assets/home/carousel_images/carousel.1.jpg',
  'title': 'PACKAGING FILMS',
  'text':
      'UFlex is India’s largest end to end flexible packaging solutions company serving as one shop for all flexible packaging needs.',
};

class _GroupWebsiteState extends State<GroupWebsite> {
  final List<Map<String, String>> imageList = [
    {
      'image': 'assets/home/groupcarousl/Flexible-Packaging-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Packaging-Film-banner.jpg',
    },
    {
      'image':
          'assets/home/groupcarousl/Flexible-Packaging-Solutions-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Aseptic-Liquid-Packaging-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Chemicals-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Engineering-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Cylinders-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Holography-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Flex-Safe-Pack-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Flexitubes-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Product-Portfolio-banner.jpg',
    },
    {
      'image': 'assets/home/groupcarousl/Manufacturing-Facilities-banner.jpg',
    },
  ];

  static List<Map<String, String>> imageList2 = [
    {
      'image': 'assets/home/gropupwebsite/Packaging-Films-BS.jpg',
      'title': 'PACKAGING FILMS',
      'text':
          'UFlex is India’s largest end to end flexible packaging solutions company serving as one shop for all flexible packaging needs.'
    },
    {
      'image': 'assets/home/gropupwebsite/Flexible-Packaging-BS.jpg',
      'title': 'FLEXIBLE PACKAGING',
      'text':
          'UFlex is the largest flexible packaging Exportor with manufacturing capacity of over 80000 TPA.'
    },
    {
      'image': 'assets/home/gropupwebsite/Aseptic-Liquid-Packaging-BS.jpg',
      'title': 'ASPETIC LIQUID PACKAGING',
      'text':
          'Aspeto is the Liquid Packaging Brand from the House of Uflex Limited'
    },
    {
      'image': 'assets/home/gropupwebsite/Chemicals-BS.png',
      'title': 'CHEMICALS',
      'text':
          'UFlex Chemiclal Bussiness is a leading manufacturer of Liquid Inks, adhesives and Speciality Coating'
    },
    {
      'image': 'assets/home/gropupwebsite/Engineering-BS.jpg',
      'title': 'ENGINEERING',
      'text':
          'Engineering Business of uflex has grown to be the manufacturing major of top of the line packaging, printing and allied machines.'
    },
    {
      'image': 'assets/home/gropupwebsite/Cylinders-BS.jpg',
      'title': 'PRINTING CYLINDERS',
      'text':
          'UFlex Printing cylinders Business has a state of the art manufacturing facility for producing Rotogravure Cylinders,Flexo Plates & Sleeves'
    },
    {
      'image': 'assets/home/gropupwebsite/Holography-BS.jpg',
      'title': 'HALOGRAPHY',
      'text':
          'UFlex is one of the world\'s leading organizations providing brand protection and anti-counterfeiting solutions to its customers'
    },
  ];
  static List<Map<String, String>> imageList3 = [
    {
      'image': 'assets/home/gropupwebsite/Asclepius-PCR-Film.jpg',
      'title': 'PACKAGING FILMS',
      'text':
          'UFlex is India’s largest end to end flexible packaging solutions company serving as one shop for all flexible packaging needs.'
    },
    {
      'image': 'assets/home/gropupwebsite/Film-ISRO.jpg',
      'title': 'FLEXIBLE PACKAGING',
      'text':
          'UFlex is the largest flexible packaging Exportor with manufacturing capacity of over 80000 TPA.'
    },
    {
      'image': 'assets/home/gropupwebsite/Relam-250-Machine.jpg',
      'title': 'ASPETIC LIQUID PACKAGING',
      'text':
          'Aspeto is the Liquid Packaging Brand from the House of Uflex Limited'
    },
    {
      'image': 'assets/home/gropupwebsite/4D-Bag.png',
      'title': 'CHEMICALS',
      'text':
          'UFlex Chemiclal Bussiness is a leading manufacturer of Liquid Inks, adhesives and Speciality Coating'
    },
    {
      'image': 'assets/home/gropupwebsite/MICR.jpg',
      'title': 'ENGINEERING',
      'text':
          'Engineering Business of uflex has grown to be the manufacturing major of top of the line packaging, printing and allied machines.'
    },
    {
      'image': 'assets/home/gropupwebsite/Kraftika-Paper-Tube.png',
      'title': 'PRINTING CYLINDERS',
      'text':
          'UFlex Printing cylinders Business has a state of the art manufacturing facility for producing Rotogravure Cylinders,Flexo Plates & Sleeves'
    },
    {
      'image': 'assets/home/gropupwebsite/Flexgreen-HRK9542.png',
      'title': 'HALOGRAPHY',
      'text':
          'UFlex is one of the world\'s leading organizations providing brand protection and anti-counterfeiting solutions to its customers'
    },
    {
      'image': 'assets/home/gropupwebsite/ASEPTO-PREMIUM-Foil.jpg',
      'title': 'HALOGRAPHY',
      'text':
          'UFlex is one of the world\'s leading organizations providing brand protection and anti-counterfeiting solutions to its customers'
    },
  ];
  static List<Map<String, String>> imageList4 = [
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_PSA_Coverage.jpg',
      'title': 'Media Coverage',
      'text':
          'UFlex Chemicals gets India patent for solvent free pigmented adhesive - a report by Packaging South Asia.',
      'text2': '06/10/2022'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_PWI_Coverage.jpg',
      'title': 'Media Coverage',
      'text':
          'UFlex won 18 awards at the IFCA Awards organised by the Indian Flexible Packaging and Folding Carton Manufacturers (IFCA) Association in Mumbai- a report by PrintWeek.',
      'text2': '24/09/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_LT_Jeevaraj_Pillai.jpg',
      'title': 'Media Coverage',
      'text':
          '"We aspire to cut about 1,75,000 tons of carbon emission equivalent by the end of year 2024, across the group." Jeevaraj Pillai, Joint President (Packaging & New Product Development), UFlex  on MOU with CREDUCE to achieve carbon neutrality. ',
      'text2': '22/09/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_KM_Ashwani_Sharma.jpg',
      'title': 'Media Interview',
      'text':
          'A video interaction of Ashwani Kumar Sharma, President & CEO  Aseptic Liquid Packaging Business, UFlex with Packaging Insights at Drinktec’22 ',
      'text2': '19/09/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_CMD_Ashok_Chaturvedi.jpg',
      'title': 'Media Coverage',
      'text':
          'The only solution to tackling multilayer flexible packaging waste is to recycle it, Ashok Chaturvedi, Chairman & Managing Director, UFlex shared his thoughts at the 9th edition of Speciality Films & Flexible Packaging Global Summit 2022 in Mumbai.',
      'text2': '08/09/2022'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_KM_Rajesh_Bhatia.jpg',
      'title': 'Media Interview',
      'text':
          ' Rajesh Bhatia Group CFO UFlex, in an interview with ET Now on Business Outlook.',
      'text2': '29/08/2022'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_Qtr_Result.jpg',
      'title': 'Media Coverage',
      'text':
          'UFlex gallops after Q1 PAT jumps 42% YoY - a report by  Business Standard  ',
      'text2': '12/08/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_KM_Anantshree_Chaturvedi.jpg',
      'title': 'Media Interview',
      'text':
          'We innovated our way out of the problem by using a virtual engineering assembly system, body cameras and local training to get the new plants up and running - Anantshree Chaturvedi, Vice Chairman & CEO, Flex Films International to Shrabona Ghosh of Entrepreneur India. ',
      'text2': '18/06/2022'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_LT_Yogesh_Kapur.jpg',
      'title': 'Media Interview',
      'text':
          ' An interview of Yogesh Kapur, Executive Vice President, Holography Business at UFlex with Polymers Communique on \'trends in holography segment\'',
      'text2': '15/06/2022'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_LT_Amit_Shah.jpg',
      'title': 'Media Coverage',
      'text':
          'While Packaged consumer goods companies are struggling with unchecked inflation in several key inputs, such as palm oil, and crude-linked derivatives, the cost of packaging has jumped significantly in the last one year. Moneycontrol reports on this story and talks to Amit Shah, Jt. President & CMO, Flexible Packaging Business at UFlex. ',
      'text2': '09/06/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_KM_Chandan_Chattaraj.jpg',
      'title': 'Media Interview',
      'text':
          'An interview of Chandan Chattaraj, President HR, UFlex on employee value proposition published in People Matters. ',
      'text2': '03/06/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_KM_Anantshree_Chaturvedi.jpg',
      'title': 'Media Coverage',
      'text':
          'Lack of infra for alternative; delay ban on plastic by six months, say firms - a report by  The Financial Express.',
      'text2': '29/05/2022'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_Mint_Coverage.jpg',
      'title': 'Media Coverage',
      'text':
          'An authored article by Anantshree Chaturvedi, Vice Chairman & CEO, Flex Films International in US based Label Narrow Web.',
      'text2': '25/04/2022'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_PW_Coverage.jpg',
      'title': 'Media Coverage',
      'text':
          'UFlex-Asepto to set up India’s first U-shape paper straw line - a report by  Mint.',
      'text2': '24/04/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_CMD_Ashok_Chaturvedi.jpg',
      'title': 'Media Coverage',
      'text':
          'Paper Cosmetic Tube Changes Game for Skincare Products - a report by  Packaging World.',
      'text2': '24/03/2022'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_CMD_Ashok_Chaturvedi.jpg',
      'title': 'Media Coverage',
      'text':
          'UFlex doesn’t believe in wasting any waste. To amplify its efforts, it has joined the global movement driven by Alliance to End Plastic Waste to have a plastic-waste free planet - a report by  India CSR Network. ',
      'text2': '21/09/2021'
    },
    {
      'image':
          'assets/home/gropupwebsite/carousel4/UFlex_KM_Apoorvshree_Chaturvedi.jpg',
      'title': 'Media Interview',
      'text':
          'Apoorvshree Chaturvedi Director EU Operations and Sustainability UFlex in his intraction with ArabianBusiness says, "Once the CPP line is commissioned, we gain a larger market share and wide distribution network in the GCC region."',
      'text2': '07/03/2021'
    },
    {
      'image': 'assets/home/gropupwebsite/carousel4/UFlex_News.jpg',
      'title': 'Archive News',
      'text':
          'For the latest print & online news, Event media Coverage & media & events participation of UFlex, please click Below.',
      'text2': '06/10/2022'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GroupCarousel(imageList: imageList),
          Container(
            color: Color.fromARGB(255, 126, 192, 245),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'ABOUT US',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'UFlex is India\'s largest flexible packaging company, and a global leader in polymer sciences. Our packaging excellence has positioned us as a preferred packaging solutions company amongst global brands worldwide. Over the last three decades, we have earned an irreproachable reputation by defining the contours of the packaging industry in India and overseas. As a leading name among packaging solutions companies, we assist our customers by offering world-class packaging solutions that preserve freshness and extend shelf-life of food and other packed products. Owing to our qualitative approach, we are recognized as a pre-eminent player amongst flexible packaging companies in India. Since our inception in 1985, we have turned into a multi-billion company by focusing on trust, value creation for customers, quality innovation and customer satisfaction.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Trust: We ensure trust remains at the core at every point of service and customer interaction. We take stringent steps to provide consistent quality to earn our customer\'s faith.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Container(
                  width: 120,
                  height: 50,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      // Alldata.homepageindex = 1;
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => MyHomePage(),
                      // ));
                    },
                    child: Text(
                      'READ MORE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  )),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 98, 89),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 35, 15, 35),
                  child: Container(
                    height: 290.0,
                    width: 520.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/home/about-video-th.jpg"),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: Colors.blue, width: 8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'OUR BUSINESSES',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          WebsiteCarousel2(imageList: imageList2),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'INVESTORS',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'UFlex is a leading Indian Multinational focusing on innovation to create differentiation, proximity to customers and holistic end-to-end flexible packaging solutions. All efforts at the organization are aimed at augmenting the shareholders’ value.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                width: 120,
                height: 50,
                margin: EdgeInsets.all(10),
                child: Center(
                    child: InkWell(
                  onTap: () {
                    // Alldata.homepageindex = 1;

                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => MyHomePage(),
                    // ));
                  },
                  child: Text(
                    'VIEW MORE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.all(10),
                child: Center(
                    child: InkWell(
                  onTap: () {
                    // Alldata.homepageindex = 1;

                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => MyHomePage(),
                    // ));
                  },
                  child: Text(
                    'COMMUNIQUÉ AUGUST 2022',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 103, 92),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'NEW INNOVATION',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          WebsiteCarousel3(imageList: imageList3),
          Stack(
            children: <Widget>[
              Container(
                height: 150.0,
                width: 600.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/home/gropupwebsite/sustainability.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 60, 8, 0),
                child: Container(
                  child: Text(
                    'SUSTAINABILITY',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'UFLEX NEWS',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          WebsiteCarousel4(imageList: imageList4),
          Container(
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'CONTACT INFO',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.location_on_outlined,
                                          size: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'A - 107 - 108, Sector - IV, Noida (U.P.) India - 201301',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.phone,
                                          size: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              '+91 - 120 - 4012345     I',
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.call,
                                          size: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              ' +91 - 120 - 2556040',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.mail,
                                          size: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              ' enquiry@uflexltd.com     I',
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.location_on_outlined,
                                          size: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Map and Direction',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.search,
                                          size: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Group Website: www.flexfilm.com I',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'www.asepto.com',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'UFLEX SITE MAP',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(" HOME",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(
                                    " HALL OF FAME",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(
                                    "ABOUT US",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(
                                    "MEDIA CENTRE",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(
                                    "OUR BUSINESSES",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(
                                    "CAREERS",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(
                                    "INVESTORS",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.double_arrow,
                                    size: 14, color: Colors.white),
                              ),
                              WidgetSpan(
                                child: InkWell(
                                  onTap: (() {
                                    // Alldata.homepageindex = 5;
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => MyHomePage()),
                                    // );
                                  }),
                                  child: Text(
                                    "CONTACT US",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.double_arrow,
                                      size: 14, color: Colors.white),
                                ),
                                WidgetSpan(
                                  child: InkWell(
                                    onTap: (() {
                                      // Alldata.homepageindex = 5;
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => MyHomePage()),
                                      // );
                                    }),
                                    child: Text(
                                      " SUSTAINABILITY",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.double_arrow,
                                      size: 14, color: Colors.white),
                                ),
                                WidgetSpan(
                                  child: InkWell(
                                    onTap: (() {
                                      // Alldata.homepageindex = 5;
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => MyHomePage()),
                                      // );
                                    }),
                                    child: Text(
                                      "SITE MAP",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              color: Colors.red[400],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.copyright,
                                size: 14,
                              ),
                            ),
                            TextSpan(
                                text:
                                    '2022 UFlex Limited (www.uflexltd.com). All Right Reserved.',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Alldata.homepageindex = 9;
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MyHomePage()),
                      // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.exit_to_app_outlined,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Legal Disclaimer  I  ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      )),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_circle_right,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Visit Our Blog',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RawMaterialButton(
                        onPressed: () async {
                          const url = 'https://www.facebook.com/uflexltd';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 1.0,
                        constraints:
                            BoxConstraints.expand(width: 52, height: 52),
                        fillColor: Colors.white,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image(
                                image: AssetImage(
                                    'assets/contactus/facebook.jpeg'),
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RawMaterialButton(
                        onPressed: () async {
                          const url = 'https://twitter.com/uflexltd';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 1.0,
                        constraints:
                            BoxConstraints.expand(width: 52, height: 52),
                        fillColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/contactus/twitter.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RawMaterialButton(
                        onPressed: () async {
                          const url =
                              'https://www.linkedin.com/company/uflexltd';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 1.0,
                        constraints:
                            BoxConstraints.expand(width: 52, height: 52),
                        fillColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image(
                              image:
                                  AssetImage('assets/contactus/linkedin.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RawMaterialButton(
                        onPressed: () async {
                          const url =
                              'https://www.youtube.com/c/uflexltdpackaging';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 1.0,
                        constraints:
                            BoxConstraints.expand(width: 52, height: 52),
                        fillColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image(
                              image: AssetImage('assets/contactus/youtube.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RawMaterialButton(
                        onPressed: () async {
                          const url = 'https://www.instagram.com/uflexltd/';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        elevation: 1.0,
                        constraints:
                            BoxConstraints.expand(width: 52, height: 52),
                        fillColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image(
                              image:
                                  AssetImage('assets/contactus/Instagram.jpeg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
