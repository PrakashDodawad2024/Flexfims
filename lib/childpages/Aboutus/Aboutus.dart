import 'package:flexfilms/childpages/Aboutus/Financials.dart';
import 'package:flexfilms/childpages/Aboutus/Milestones.dart';
import 'package:flexfilms/childpages/Aboutus/OurPolicy.dart';
import 'package:flexfilms/childpages/Aboutus/Profile.dart';
import 'package:flexfilms/childpages/Aboutus/Recognitions.dart';
import 'package:flexfilms/childpages/Aboutus/Speaks.dart';
import 'package:flexfilms/childpages/Aboutus/Vision.dart';
import 'package:flexfilms/childpages/HomePage/DownGlobalPresence.dart';
import 'package:flexfilms/childpages/HomePage/DownProducts.dart';
import 'package:flexfilms/childpages/HomePage/DownSiteMap.dart';
import 'package:flexfilms/childpages/HomePage/HomeContactUs.dart';
import 'package:flexfilms/childpages/HomePage/LogOut.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  Map<String, bool> highlight = {
    "CompanyProfile": true,
    "cmdVision": false,
    "ceoSpeaks": false,
    "milestones": false,
    "ourPolicy": false,
    "financials": false,
    "certificateRecognition": false,
  };
  String current_val = 'Company Profile';

  List<Widget> aboutuslist = <Widget>[
    CompanyProfile(),
    cmdVision(),
    ceoSpeaks(),
    milestones(),
    ourPolicy(),
    financials(),
    certificateRecognition(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.aboutpageindex) {
      case 0:
        setState(() {
          current_val = 'CompanyProfile';
          highlight['CompanyProfile'] = true;
          highlight['cmdVision'] = false;
          highlight['ceoSpeaks'] = false;
          highlight['milestones'] = false;
          highlight['ourPolicy'] = false;
          highlight['financials'] = false;
          highlight['certificateRecognition'] = false;
        });
        break;
      case 1:
        setState(() {
          current_val = 'cmdVision';
          highlight['CompanyProfile'] = false;
          highlight['cmdVision'] = true;
          highlight['ceoSpeaks'] = false;
          highlight['milestones'] = false;
          highlight['ourPolicy'] = false;
          highlight['financials'] = false;
          highlight['certificateRecognition'] = false;
        });
        break;
      case 2:
        setState(() {
          current_val = 'ceoSpeaks';
          highlight['CompanyProfile'] = false;
          highlight['cmdVision'] = false;
          highlight['ceoSpeaks'] = true;
          highlight['milestones'] = false;
          highlight['ourPolicy'] = false;
          highlight['financials'] = false;
          highlight['certificateRecognition'] = false;
        });
        break;
      case 3:
        setState(() {
          current_val = 'milestones';
          highlight['CompanyProfile'] = false;
          highlight['cmdVision'] = false;
          highlight['ceoSpeaks'] = false;
          highlight['milestones'] = true;
          highlight['ourPolicy'] = false;
          highlight['financials'] = false;
          highlight['certificateRecognition'] = false;
        });
        break;
      case 4:
        setState(() {
          current_val = 'ourPolicy';
          highlight['CompanyProfile'] = false;
          highlight['cmdVision'] = false;
          highlight['ceoSpeaks'] = false;
          highlight['milestones'] = false;
          highlight['ourPolicy'] = true;
          highlight['financials'] = false;
          highlight['certificateRecognition'] = false;
        });
        break;
      case 5:
        setState(() {
          current_val = 'financials';
          highlight['CompanyProfile'] = false;
          highlight['cmdVision'] = false;
          highlight['ceoSpeaks'] = false;
          highlight['milestones'] = false;
          highlight['ourPolicy'] = false;
          highlight['financials'] = true;
          highlight['certificateRecognition'] = false;
        });
        break;
      case 6:
        setState(() {
          current_val = 'certificateRecognition';
          highlight['CompanyProfile'] = false;
          highlight['cmdVision'] = false;
          highlight['ceoSpeaks'] = false;
          highlight['milestones'] = false;
          highlight['ourPolicy'] = false;
          highlight['financials'] = false;
          highlight['certificateRecognition'] = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 1.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image:
                    AssetImage("assets/aboutUs/companyProfile/header.bg.jpg"),
                fit: BoxFit.cover,
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
                    "About Us",
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
                                  text: '  > About Us:',
                                  style: TextStyle(fontSize: 16)),
                              TextSpan(
                                  text: ' > ${current_val} ',
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
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.aboutpageindex = 0;
          //                     current_val = 'CompanyProfile';
          //                     highlight['CompanyProfile'] = true;
          //                     highlight['cmdVision'] = false;
          //                     highlight['ceoSpeaks'] = false;
          //                     highlight['milestones'] = false;
          //                     highlight['ourPolicy'] = false;
          //                     highlight['financials'] = false;
          //                     highlight['certificateRecognition'] = false;
          //                   });
          //                 },
          //                 child: Text(
          //                   "Company Profile",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['CompanyProfile'] == true
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.aboutpageindex = 1;
          //                     current_val = 'CMD\'s Vision';
          //                     highlight['CompanyProfile'] = false;
          //                     highlight['cmdVision'] = true;
          //                     highlight['ceoSpeaks'] = false;
          //                     highlight['milestones'] = false;
          //                     highlight['ourPolicy'] = false;
          //                     highlight['financials'] = false;
          //                     highlight['certificateRecognition'] = false;
          //                   });
          //                 },
          //                 child: Text(
          //                   "CMD\'s Vision",
          //                   style: TextStyle(
          //                       fontWeight: highlight['cmdVision'] == true
          //                           ? FontWeight.bold
          //                           : FontWeight.normal,
          //                       fontSize: 16),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.aboutpageindex = 2;
          //                     current_val = 'CEO Speaks';
          //                     highlight['CompanyProfile'] = false;
          //                     highlight['cmdVision'] = false;
          //                     highlight['ceoSpeaks'] = true;
          //                     highlight['milestones'] = false;
          //                     highlight['ourPolicy'] = false;
          //                     highlight['financials'] = false;
          //                     highlight['certificateRecognition'] = false;
          //                   });
          //                 },
          //                 child: Text(
          //                   "CEO Speaks",
          //                   style: TextStyle(
          //                       fontWeight: highlight['ceoSpeaks'] == true
          //                           ? FontWeight.bold
          //                           : FontWeight.normal,
          //                       fontSize: 16),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.aboutpageindex = 3;
          //                     current_val = 'Milestones';
          //                     highlight['CompanyProfile'] = false;
          //                     highlight['cmdVision'] = false;
          //                     highlight['ceoSpeaks'] = false;
          //                     highlight['milestones'] = true;
          //                     highlight['ourPolicy'] = false;
          //                     highlight['financials'] = false;
          //                     highlight['certificateRecognition'] = false;
          //                   });
          //                 },
          //                 child: Text(
          //                   "Milestones",
          //                   style: TextStyle(
          //                       fontWeight: highlight['milestones'] == true
          //                           ? FontWeight.bold
          //                           : FontWeight.normal,
          //                       fontSize: 16),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.aboutpageindex = 4;
          //                     current_val = 'Our Policy';
          //                     highlight['CompanyProfile'] = false;
          //                     highlight['cmdVision'] = false;
          //                     highlight['ceoSpeaks'] = false;
          //                     highlight['milestones'] = false;
          //                     highlight['ourPolicy'] = true;
          //                     highlight['financials'] = false;
          //                     highlight['certificateRecognition'] = false;
          //                   });
          //                 },
          //                 child: Text(
          //                   "Our Policy",
          //                   style: TextStyle(
          //                       fontWeight: highlight['ourPolicy'] == true
          //                           ? FontWeight.bold
          //                           : FontWeight.normal,
          //                       fontSize: 16),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.aboutpageindex = 5;
          //                     current_val = 'Financials';
          //                     highlight['CompanyProfile'] = false;
          //                     highlight['cmdVision'] = false;
          //                     highlight['ceoSpeaks'] = false;
          //                     highlight['milestones'] = false;
          //                     highlight['ourPolicy'] = false;
          //                     highlight['financials'] = true;
          //                     highlight['certificateRecognition'] = false;
          //                   });
          //                 },
          //                 child: Text(
          //                   "Financials",
          //                   style: TextStyle(
          //                       fontWeight: highlight['financials'] == true
          //                           ? FontWeight.bold
          //                           : FontWeight.normal,
          //                       fontSize: 16),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     alignment: Alignment.topLeft,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.play_arrow,
          //               size: 14,
          //               color: Colors.red,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Padding(
          //               padding: const EdgeInsets.only(left: 8),
          //               child: InkWell(
          //                 onTap: () {
          //                   setState(() {
          //                     Alldata.aboutpageindex = 6;
          //                     current_val = 'Certificates & Recognitions';
          //                     highlight['CompanyProfile'] = false;
          //                     highlight['cmdVision'] = false;
          //                     highlight['ceoSpeaks'] = false;
          //                     highlight['milestones'] = false;
          //                     highlight['ourPolicy'] = false;
          //                     highlight['financials'] = false;
          //                     highlight['certificateRecognition'] = true;
          //                   });
          //                 },
          //                 child: Text(
          //                   "Certificates & Recognitions",
          //                   style: TextStyle(
          //                       fontWeight:
          //                           highlight['certificateRecognition'] == true
          //                               ? FontWeight.bold
          //                               : FontWeight.normal,
          //                       fontSize: 16),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            child: aboutuslist[Alldata.aboutpageindex],
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
