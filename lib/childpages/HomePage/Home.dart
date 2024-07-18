import 'package:flexfilms/childpages/HomePage/DownGlobalPresence.dart';
import 'package:flexfilms/childpages/HomePage/DownProducts.dart';
import 'package:flexfilms/childpages/HomePage/HomeContactUs.dart';
import 'package:flexfilms/childpages/HomePage/HomeGlobalPresence.dart';
import 'package:flexfilms/childpages/HomePage/HomeInnovation.dart';
import 'package:flexfilms/childpages/HomePage/HomeNews.dart';
import 'package:flexfilms/childpages/HomePage/HomeProduct.dart';
import 'package:flexfilms/childpages/HomePage/LogOut.dart';
import 'package:flexfilms/childpages/HomePage/PdfCertificate.dart';
import 'package:flexfilms/childpages/HomePage/TextPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../LandingPages/carousel.dart';
import 'DownSiteMap.dart';
import 'ViewMore.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> imageList = [
    {
      'image': 'assets/home/carousel_images/carousel.1.jpg',
      'text': '#Flex Films-Where your happiness means the \'world\''
    },
    {
      'image': 'assets/home/carousel_images/carousel.2.jpg',
      'text': '#Flex Films-Where innovation is a \'cult\' '
    },
    {
      'image': 'assets/home/carousel_images/carousel.3.jpg',
      'text': '#Flex Films-Where \'GREEN\' is way of life',
    },
    {
      'image': 'assets/home/carousel_images/carousel.4.jpg',
      'text': '#Flex Films-Where \'Just in time\' is a Auxiom'
    },
    {
      'image': 'assets/home/carousel_images/carousel.5.jpg',
      'text': '#Flex Films-Where entire globe is a  is a \'Playground\''
    },
    {
      'image': 'assets/home/carousel_images/carousel.6.jpg',
      'text': '#Flex Films-Where Reliability is \'promise\''
    },
    {
      'image': 'assets/home/carousel_images/carousel.7.jpg',
      'text': '#Flex Films-Where our \'Speed to market\' becomes your advantage'
    },
    {
      'image': 'assets/home/carousel_images/carousel.8.jpg',
      'text': '#Flex Films-Where preserving freshness in \'motto\''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Carousel(imageList: imageList),
          ),
          // SizedBox(
          //   height: 100,
          // ),
          TextPage(),
          PdfCertificate(),
          ViewMore(),
          HomeProduct(),
          HomeGlobalPresence(),
          HomeNews(),
          HomeInnovation(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Color.fromARGB(255, 225, 225, 225),
              child: Column(
                children: [
                  DownSIteMap(),
                  DownProducts(),
                  DownGlobalPresence(),
                  HomeContactUs(),
                  LogOut(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
