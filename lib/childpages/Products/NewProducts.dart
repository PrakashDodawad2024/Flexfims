import 'package:flexfilms/childpages/Products/newProductPdf/F-HBP%20.dart';
import 'package:flexfilms/childpages/Products/newProductPdf/F-HPF.dart';
import 'package:flexfilms/childpages/Products/newProductPdf/F-STF.dart';
import 'package:flexfilms/childpages/Products/newProductPdf/F-UHB-M.dart';
import 'package:flexfilms/childpages/Products/newProductPdf/WebMetalized.dart';
import 'package:flexfilms/childpages/Products/newProductPdf/polyester.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class newProduct extends StatefulWidget {
  const newProduct({super.key});

  @override
  State<newProduct> createState() => _newProductState();
}

class _newProductState extends State<newProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'New ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'Product Launches ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  'Flex Films is the global film manufacturing arm of India’s largest multinational flexible packaging solutions company and global polymer science player, UFlex Limited. With state-of-the-art packaging film manufacturing facilities in all the major continents in the world i.e., Asia, Europe, North America and Africa, our cumulative production capacity stands in excess of 5,10,000 MT per annum.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
            ),
          ),
          Row(
            children: [
              Container(
                width: 103,
                height: 2,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Text(
                      'On the Timeline',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
              Container(
                width: 103,
                height: 2,
                color: Colors.grey,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 2,
                height: 40,
                color: Colors.grey,
              ),
              Center(
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 214, 203, 203))),
                  child: Center(
                    child: Text(
                      '2021',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Container(
                width: 2,
                height: 40,
                color: Colors.grey,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    //  alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.9,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      // border:
                      //     Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/products/newproducts/Launches-F-UHB-M.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text(
                          'Metallic Polyester Ultra-high Barrier Film ‘F-UHB-M’ for Aluminium Foil Replacement',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Text(
                          'Flex Films, the global film manufacturing arm of flexible packaging giant UFlex, is set to launch its new avant-garde patented BOPET high barrier film F-UHB-M, designed to replace aluminium foil in flexible packaging applications. To be manufactured in Flex Films Kentucky plant and supplied across the world, F-UHB-M addresses challenges of the Converting Industry that has relied for long on aluminium foil for packaging despite several of its limitations including material availability, high material cost, weak integrity, propensity for in-use pinhole formation and difficulty in recycling.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Wrap(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.calendar_month,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'September 23,2021',
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 10, 10, 10),
                    child: Container(
                      width: 95,
                      height: 30,
                      child: InkWell(
                          onTap: () {},
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Fuhbm(),
                              ));
                            },
                            child: Text(
                              'view more...',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 214, 203, 203)),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 2,
                height: 40,
                color: Colors.grey,
              ),
              Center(
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 214, 203, 203))),
                  child: Center(
                    child: Text(
                      '2018',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Container(
                width: 2,
                height: 40,
                color: Colors.grey,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        //  alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          // border:
                          //     Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/products/newproducts/Launches-F-HBP.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              'F-HPF Puncture Resistant/Nylon Replacement BOPET Film',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'F-HPF is a new type of nylon replacement film made with a newly developed proprietary technology. This film offers good thermoforming performance, high puncture resistance and flexural fatigue strength suitable for many applications formerly only able to be filled with bi-axially oriented nylon (BON) film.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://youtu.be/U7r1_7LrSuU';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(
                          height: 250.0,
                          width: 320.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/home/ytplay.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Wrap(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.calendar_month,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'September 19,2018',
                                          style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(180, 10, 10, 10),
                        child: Container(
                          width: 95,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Fhpf(),
                                  ));
                                },
                                child: Text(
                                  'view more...',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                  ),
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        //  alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          // border:
                          //     Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/products/newproducts/Launches-F-HPF.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              'F-HPF Puncture Resistant/Nylon Replacement BOPET Film',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'F-HPF is a new type of nylon replacement film made with a newly developed proprietary technology. This film offers good thermoforming performance, high puncture resistance and flexural fatigue strength suitable for many applications formerly only able to be filled with bi-axially oriented nylon (BON) film.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://youtu.be/z93QeQy_SzM';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(
                          height: 250.0,
                          width: 320.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/home/ytplay.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Wrap(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.calendar_month,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'September 19,2018',
                                          style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(180, 10, 10, 10),
                        child: Container(
                          width: 95,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Fhbp(),
                                  ));
                                },
                                child: Text(
                                  'view more...',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                  ),
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        //  alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          // border:
                          //     Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/products/newproducts/Web-System.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                            child: Text(
                              'Web Metalized Surface Inspection System',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                            child: Text(
                              'The Web Metalized Surface Inspection System is an optical surface inspection and defect classification system for FLEXMETPROTECTTM. It comprises smart line scan cameras measuring and analyzing the size and shape of any and every defect real time. The Web Metalized Surface Inspection System checks the entire web and allows for rapid and accurate detection of defects.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://youtu.be/O40tlADJHYY';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(
                          height: 250.0,
                          width: 320.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/home/ytplay.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Wrap(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.calendar_month,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'July 13,2018',
                                          style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(180, 10, 10, 10),
                        child: Container(
                          width: 95,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WebMetalized(),
                                  ));
                                },
                                child: Text(
                                  'view more...',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                  ),
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        //  alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 1.2,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          // border:
                          //     Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/products/newproducts/F-STF-ULTRA-SOFT.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                              'F-STF Ultra Soft Super Durable BOPET Film',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                            child: Text(
                              'F-STF film has an engineered-micro surface texture giving a unique and luxurious feel. Suitable as a outer web in many packaging laminations, F-STF film gives brand owners a new capability in the production of consumer centric packaging. The backside of F-STF is easily printable with traditional converter inks or new digital print technologies.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          const url = 'https://youtu.be/tmj76lN9stI';
                          if (await canLaunch(url)) {
                            await launch(url,
                                forceWebView: false, enableJavaScript: false);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(
                          height: 250.0,
                          width: 320.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/home/ytplay.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Wrap(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.calendar_month,
                                          size: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                          text: 'April 02,2018',
                                          style: TextStyle(fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(180, 10, 10, 10),
                        child: Container(
                          width: 95,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Fstf(),
                                  ));
                                },
                                child: Text(
                                  'view more...',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                  ),
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Container(
              child: Column(
                children: [
                  Container(
                    //  alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 1.1,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      // border:
                      //     Border.all(color: Color.fromARGB(255, 214, 203, 203)),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/products/newproducts/F-STF-ULTRA-SOFT.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                        child: Text(
                          'High Bond and Barrier Metallized Polyester Film',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                        child: Text(
                          'Metallized polyester films are increasing in popularity for imparting high barrier properties to laminated flexible packaging structures. However, it has been often experienced that poor adhesion of metal with the base polyester film can result in laminate failure, thereby decreasing product performance.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      const url = 'https://youtu.be/32qp6gf3_0M';
                      if (await canLaunch(url)) {
                        await launch(url,
                            forceWebView: false, enableJavaScript: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      height: 250.0,
                      width: 320.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/home/ytplay.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Wrap(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.calendar_month,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'February 02,2018',
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 10, 10, 10),
                    child: Container(
                      width: 95,
                      height: 30,
                      child: InkWell(
                          onTap: () {},
                          child: TextButton(
                            onPressed: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => polyester(),
                              ));
                            }),
                            child: Text(
                              'view more...',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 214, 203, 203)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
