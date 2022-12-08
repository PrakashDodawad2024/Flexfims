// import 'package:flexfilm_application/ChildPages/Innovations/Innovations.dart';
// import 'package:flexfilm_application/LandingPages/drawerPage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/LeagalDisclaimer.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/SiteMap.dart';
import 'package:flexfilms/childpages/HomePage/DownLogout/groupWebsite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../childpages/Aboutus/Aboutus.dart';
import '../childpages/Carrears/Carrears.dart';
import '../childpages/ContactUs/ContactUs.dart';
import '../childpages/GlobalPresence/GlobalPresence.dart';
// import '../childpages/Home.dart';
// import '../childpages/Home.dart';
import '../childpages/HomePage/DownLogout/News.dart';
import '../childpages/HomePage/Home.dart';
import '../childpages/Innovation/Innovation.dart';
import '../childpages/Products/ProductsPage.dart';
import 'AllData.dart';
import 'carousel.dart';
import 'drawerPage.dart';
//import 'pages/side_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ontapped = false;
  List<Widget> body = <Widget>[
    Home(),
    AboutUs(),
    ProductsPage(),
    Innovation(),
    GlobalPresence(),
    Carrears(),
    ContactUs(),
    newsFlexFilms(),
    SiteMapScreeen(),
    LegalDisclaimer(),
    //GroupWebsite(),
  ];

  void initState() {
    super.initState();
    getfcmtoken();
  }

  getfcmtoken() {
    try {
      FirebaseMessaging.instance.getToken().then((newToken) {
        print('hjgfj:${newToken}');
      });
    } catch (e) {
      print('firebase messaging:$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          print('object');
          setState(() {
            ontapped = false;
          });
        },
        child: Material(
          //debugShowCheckedModeBanner: false,
          child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: Image.asset(
                'assets/home/logo-flexfilms-small.png',
                width: 650,
                height: 750,
              ),
              //  Image.network(
              //   "https://www.flexfilm.com/img/logo-flexfilms-small.png",
              // width: 650,
              // height: 750,
              // ),
              // middle: Text('jhgdkjfj'),
              trailing: TextButton(
                onPressed: () {
                  setState(() {
                    ontapped = !ontapped;
                  });
                  // Scaffold.of(context).openDrawer();
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //   builder: (context) => DrawerPage(),
                  // ));
                },
                child: Icon(Icons.list),
              ),
            ),
            child: Stack(
              children: [
                //  body[Alldata.homepageindex],
                Container(
                    child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.88,
                        margin: EdgeInsets.only(top: 100),
                        child: body[Alldata.homepageindex]),

                    // Home(),
                  ],
                )),
                if (ontapped)
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 90, right: 20, left: 20),
                    child: DrawerPage(context: context),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
