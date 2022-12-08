import 'package:flutter/material.dart';

import '../../../LandingPages/drawerPage.dart';
import '../DownGlobalPresence.dart';
import '../DownProducts.dart';
import '../DownSiteMap.dart';
import '../HomeContactUs.dart';
import '../LogOut.dart';

class LegalDisclaimer extends StatefulWidget {
  @override
  State<LegalDisclaimer> createState() => _LegalDisclaimerState();
}

class _LegalDisclaimerState extends State<LegalDisclaimer> {
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
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
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
                    "Legal Disclaimer",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 10,
                  endIndent: 480,
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
                                  text: ' > Legal Disclaimer ',
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  'The information contained in this Web Site (http://flexfilm.com) has been prepared solely for the purpose of providing information about Flex Films to interested parties, and is not in any way binding on Flex Films.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.125,
            width: MediaQuery.of(context).size.width * 1.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              image: DecorationImage(
                image: AssetImage('assets/legal/Legal-Disclaimer.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  'This Web Site has been compiled in good faith by the Flex Films, but no representation is made or warranty given (either express or implied) as to the completeness or accuracy of the information it contains. You are therefore requested to verify this information before you act upon it by calling the concerned Flex Films office.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  'By accessing this Web Site, it is assumed that you agree that Flex Films will not be liable for any direct or indirect loss arising from the use of the information and the material contained in this Web Site.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  'All the Intellectual Property Rights solely remain with Flex Films. Your access to it does not imply a license to reproduce and/or distribute this information and you are not allowed to any such act without the prior approval of Flex Films.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                  'Flex Films shall not be responsible for the fraudulent act related to cyber crime in respect of online content through improper disclosure of confidential details by third party who is unlawfully acting.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
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
