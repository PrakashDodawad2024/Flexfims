import 'package:flexfilms/LandingPages/HomePage.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/LeagalDisclaimer.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/News.dart';
import 'package:flutter/material.dart';
import '../../../LandingPages/AllData.dart';
import '../../../LandingPages/drawerPage.dart';
import '../DownGlobalPresence.dart';
import '../DownProducts.dart';
import '../DownSiteMap.dart';
import '../HomeContactUs.dart';
import '../LogOut.dart';

class SiteMapScreeen extends StatefulWidget {
  @override
  State<SiteMapScreeen> createState() => SiteMapScreeenState();
}

class SiteMapScreeenState extends State<SiteMapScreeen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.125,
            width: MediaQuery.of(context).size.width * 1.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/legal/demo-header-bg.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.red),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                  child: Text(
                    "Site Map",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 10,
                  endIndent: 280,
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Wrap(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.home,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                  text: ' > Site Map ',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.yellow)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: InkWell(
                onTap: () {
                  Alldata.homepageindex = 0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Text('HOME',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    textAlign: TextAlign.justify),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text('ABOUT US',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 1;
                    Alldata.aboutpageindex = 0;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Alldata.homepageindex = 1;
                              Alldata.aboutpageindex = 0;
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => MyHomePage())));
                            },
                            child: Text(
                              'Company Profile',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 160),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 1;
                    Alldata.aboutpageindex = 1;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Alldata.homepageindex = 1;
                              Alldata.aboutpageindex = 1;
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => MyHomePage())));
                            },
                            child: Text(
                              'CMD\'S VISION',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 175),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 1;
                    Alldata.aboutpageindex = 2;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Alldata.homepageindex = 1;
                              Alldata.aboutpageindex = 2;
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => MyHomePage())));
                            },
                            child: Text(
                              'CEO SPEAKS',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 185),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 1;
                    Alldata.aboutpageindex = 3;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Alldata.homepageindex = 1;
                              Alldata.aboutpageindex = 3;
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => MyHomePage())));
                            },
                            child: Text(
                              'MILESTONES',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 183),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 1;
                    Alldata.aboutpageindex = 4;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Alldata.homepageindex = 1;
                              Alldata.aboutpageindex = 4;
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => MyHomePage())));
                            },
                            child: Text(
                              'OUR POLICY',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 1;
                    Alldata.aboutpageindex = 5;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Alldata.homepageindex = 1;
                              Alldata.aboutpageindex = 5;
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => MyHomePage())));
                            },
                            child: Text(
                              'FINANCIALS',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 1;
                    Alldata.aboutpageindex = 6;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_right_sharp),
                          TextButton(
                            onPressed: () {
                              Alldata.homepageindex = 1;
                              Alldata.aboutpageindex = 6;
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => MyHomePage())));
                            },
                            child: Text(
                              'CERTIFICATES & RECOGNITIONS',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.blue),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 1.0,
                                  top: 2.0,
                                  child:
                                      Icon(Icons.link, color: Colors.black54),
                                ),
                                Icon(Icons.link, color: Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text('PRODUCTS',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 2;
                    Alldata.Productpageindex = 0;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_double_arrow_right_sharp),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'ALL PRODUCTS',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 165),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 1.0,
                                    top: 2.0,
                                    child:
                                        Icon(Icons.link, color: Colors.black54),
                                  ),
                                  Icon(Icons.link, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 2;
                    Alldata.Productpageindex = 1;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_double_arrow_right_sharp),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'NEW PRODUCT LAUCNHES',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 1.0,
                                    top: 2.0,
                                    child:
                                        Icon(Icons.link, color: Colors.black54),
                                  ),
                                  Icon(Icons.link, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 2;
                    Alldata.Productpageindex = 2;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_double_arrow_right_sharp),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'BOPET FILMS',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 180),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 1.0,
                                    top: 2.0,
                                    child:
                                        Icon(Icons.link, color: Colors.black54),
                                  ),
                                  Icon(Icons.link, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 2;
                    Alldata.Productpageindex = 3;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_double_arrow_right_sharp),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'BOPP FILMS',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 190),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 1.0,
                                    top: 2.0,
                                    child:
                                        Icon(Icons.link, color: Colors.black54),
                                  ),
                                  Icon(Icons.link, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 2;
                    Alldata.Productpageindex = 4;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_double_arrow_right_sharp),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'CPP FILMS',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 200),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 1.0,
                                    top: 2.0,
                                    child:
                                        Icon(Icons.link, color: Colors.black54),
                                  ),
                                  Icon(Icons.link, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 2;
                    Alldata.Productpageindex = 5;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_double_arrow_right_sharp),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'METALLISED FILMS ',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 125),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 1.0,
                                    top: 2.0,
                                    child:
                                        Icon(Icons.link, color: Colors.black54),
                                  ),
                                  Icon(Icons.link, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Alldata.homepageindex = 2;
                    Alldata.Productpageindex = 6;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => MyHomePage())));
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_double_arrow_right_sharp),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'ALOX COATED FILMS',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 1.0,
                                    top: 2.0,
                                    child:
                                        Icon(Icons.link, color: Colors.black54),
                                  ),
                                  Icon(Icons.link, color: Colors.blue),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Alldata.homepageindex = 2;
                          Alldata.Productpageindex = 7;
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: ((context) => MyHomePage())));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.keyboard_double_arrow_right_sharp),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'SPECIALITY FILMS',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.blue),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 135),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          left: 1.0,
                                          top: 2.0,
                                          child: Icon(Icons.link,
                                              color: Colors.black54),
                                        ),
                                        Icon(Icons.link, color: Colors.blue),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Alldata.homepageindex = 3;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 225, top: 10),
                            child: Container(
                              child: Text(
                                'INNOVATIONS',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 185, top: 10),
                        child: Container(
                          child: Text(
                            'GLOBAL PRESENCE',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 0;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'GLOBAL PERSPECTIVE',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 105),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 1;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS INDIA',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 145),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 2;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS UAE',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 155),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 3;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS MEXICO',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 120),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 4;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS EGYPT',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 130),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 5;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS POLAND',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 120),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 6;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS USA',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 155),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 7;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS RUSSIA',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 125),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Alldata.homepageindex = 4;
                                Alldata.Globalpageindex = 8;
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyHomePage())));
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Icon(Icons
                                            .keyboard_double_arrow_right_sharp),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'FLEX FILMS HUNGARY',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 105),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                left: 1.0,
                                                top: 2.0,
                                                child: Icon(Icons.link,
                                                    color: Colors.black54),
                                              ),
                                              Icon(Icons.link,
                                                  color: Colors.blue),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Alldata.homepageindex = 5;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 265, top: 10),
                          child: Container(
                            child: Text(
                              'CAREERS',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Alldata.homepageindex = 6;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 235, top: 10),
                          child: Container(
                            child: Text(
                              'CONTACT US',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Alldata.homepageindex = 7;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 300, top: 10),
                          child: Container(
                            child: Text(
                              'NEWS',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 205, top: 10),
                        child: Container(
                          child: Text(
                            'GROUP WEBSITE',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 270, top: 10),
                        child: Container(
                          child: Text(
                            'SITE MAP',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Alldata.homepageindex = 9;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 175, top: 10),
                          child: Container(
                            child: Text(
                              'LEGAL DISCLAIMER',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: List.generate(
                              250 ~/ 1,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 2,
                                    ),
                                  )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
    );
  }
}
