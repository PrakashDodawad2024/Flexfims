import 'package:flexfilms/childpages/Products/AllProducts.dart';
import 'package:flexfilms/childpages/Products/AloxCoated.dart';
import 'package:flexfilms/childpages/Products/BopetFilms.dart';
import 'package:flexfilms/childpages/Products/BoppFilms.dart';
import 'package:flexfilms/childpages/Products/CppFilms.dart';
import 'package:flexfilms/childpages/Products/Metalized.dart';
import 'package:flexfilms/childpages/Products/NewProducts.dart';
import 'package:flexfilms/childpages/Products/Speciality.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import '../HomePage/DownGlobalPresence.dart';
import '../HomePage/DownProducts.dart';
import '../HomePage/DownSiteMap.dart';
import '../HomePage/HomeContactUs.dart';
import '../HomePage/LogOut.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  Map<String, bool> highlight = {
    "allProducts": true,
    "newProduct": false,
    "bopetFilms": false,
    "boppFilms": false,
    "cppFilms": false,
    "metalized": false,
    "aloxCoated": false,
    "speciality": false,
  };
  String current_val = 'All Products';

  List<Widget> Productslist = <Widget>[
    allProducts(),
    newProduct(),
    bopetFilms(),
    boppFilms(),
    cppFilms(),
    metalized(),
    aloxCoated(),
    speciality(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.Productpageindex) {
      case 0:
        setState(() {
          current_val = 'allProducts';
          highlight['allProducts'] = true;
          highlight['newProduct'] = false;
          highlight['bopetFilms'] = false;
          highlight['boppFilms'] = false;
          highlight['cppFilms'] = false;
          highlight['metalized'] = false;
          highlight['aloxCoated'] = false;
          highlight['speciality'] = false;
        });
        break;
      case 1:
        setState(() {
          current_val = 'newProduct';
          highlight['allProducts'] = false;
          highlight['newProduct'] = true;
          highlight['bopetFilms'] = false;
          highlight['boppFilms'] = false;
          highlight['cppFilms'] = false;
          highlight['metalized'] = false;
          highlight['aloxCoated'] = false;
          highlight['speciality'] = false;
        });
        break;
      case 2:
        setState(() {
          current_val = 'bopetFilms';
          highlight['allProducts'] = false;
          highlight['newProduct'] = false;
          highlight['bopetFilms'] = true;
          highlight['boppFilms'] = false;
          highlight['cppFilms'] = false;
          highlight['metalized'] = false;
          highlight['aloxCoated'] = false;
          highlight['speciality'] = false;
        });
        break;
      case 3:
        setState(() {
          current_val = 'boppFilms';
          highlight['allProducts'] = false;
          highlight['newProduct'] = false;
          highlight['bopetFilms'] = false;
          highlight['boppFilms'] = true;
          highlight['cppFilms'] = false;
          highlight['metalized'] = false;
          highlight['aloxCoated'] = false;
          highlight['speciality'] = false;
        });
        break;
      case 4:
        setState(() {
          current_val = 'cppFilms';
          highlight['allProducts'] = false;
          highlight['newProduct'] = false;
          highlight['bopetFilms'] = false;
          highlight['boppFilms'] = false;
          highlight['cppFilms'] = true;
          highlight['metalized'] = false;
          highlight['aloxCoated'] = false;
          highlight['speciality'] = false;
        });
        break;
      case 5:
        setState(() {
          current_val = 'metalized';
          highlight['allProducts'] = false;
          highlight['newProduct'] = false;
          highlight['bopetFilms'] = false;
          highlight['boppFilms'] = false;
          highlight['cppFilms'] = false;
          highlight['metalized'] = true;
          highlight['aloxCoated'] = false;
          highlight['speciality'] = false;
        });
        break;
      case 6:
        setState(() {
          current_val = 'aloxCoated';
          highlight['allProducts'] = false;
          highlight['newProduct'] = false;
          highlight['bopetFilms'] = false;
          highlight['boppFilms'] = false;
          highlight['cppFilms'] = false;
          highlight['metalized'] = false;
          highlight['aloxCoated'] = true;
          highlight['speciality'] = false;
        });
        break;
      case 7:
        setState(() {
          current_val = 'speciality';
          highlight['allProducts'] = false;
          highlight['newProduct'] = false;
          highlight['bopetFilms'] = false;
          highlight['boppFilms'] = false;
          highlight['cppFilms'] = false;
          highlight['metalized'] = false;
          highlight['aloxCoated'] = false;
          highlight['speciality'] = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 1.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(
                    "assets/products/allProducts/custom-header-bg.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Text(
                      "Products",
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
                                    text: '  > Products',
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
          //                     Alldata.Productpageindex = 0;
          //                     current_val = 'All Products';
          //                     highlight['allProducts'] = true;
          //                     highlight['newProduct'] = false;
          //                     highlight['bopetFilms'] = false;
          //                     highlight['boppFilms'] = false;
          //                     highlight['cppFilms'] = false;
          //                     highlight['metalized'] = false;
          //                     highlight['aloxCoated'] = false;
          //                     highlight['speciality'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => MainProductScreen()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "All Products",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['allProducts'] == true
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
          //                     Alldata.Productpageindex = 1;
          //                     current_val = 'New Product Lauches';
          //                     highlight['allProducts'] = false;
          //                     highlight['newProduct'] = true;
          //                     highlight['bopetFilms'] = false;
          //                     highlight['boppFilms'] = false;
          //                     highlight['cppFilms'] = false;
          //                     highlight['metalized'] = false;
          //                     highlight['aloxCoated'] = false;
          //                     highlight['speciality'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => NewProducts()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "New Product Lauches",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['newProduct'] == true
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
          //                     Alldata.Productpageindex = 2;
          //                     current_val = 'BOPET Films';
          //                     highlight['allProducts'] = false;
          //                     highlight['newProduct'] = false;
          //                     highlight['bopetFilms'] = true;
          //                     highlight['boppFilms'] = false;
          //                     highlight['cppFilms'] = false;
          //                     highlight['metalized'] = false;
          //                     highlight['aloxCoated'] = false;
          //                     highlight['speciality'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => BopetFilms()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "BOPET Films",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['bopetFilms'] == true
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
          //                     Alldata.Productpageindex = 3;
          //                     current_val = 'BOPP Films';
          //                     highlight['allProducts'] = false;
          //                     highlight['newProduct'] = false;
          //                     highlight['bopetFilms'] = false;
          //                     highlight['boppFilms'] = true;
          //                     highlight['cppFilms'] = false;
          //                     highlight['metalized'] = false;
          //                     highlight['aloxCoated'] = false;
          //                     highlight['speciality'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => BoppFilms()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "BOPP Films",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['boppFilms'] == true
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
          //                     Alldata.Productpageindex = 4;
          //                     current_val = 'CPP Films';
          //                     highlight['allProducts'] = false;
          //                     highlight['newProduct'] = false;
          //                     highlight['bopetFilms'] = false;
          //                     highlight['boppFilms'] = false;
          //                     highlight['cppFilms'] = true;
          //                     highlight['metalized'] = false;
          //                     highlight['aloxCoated'] = false;
          //                     highlight['speciality'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => CppFilms()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "CPP Films",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['cppFilms'] == true
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
          //                     Alldata.Productpageindex = 5;
          //                     current_val = 'Metalized Films';
          //                     highlight['allProducts'] = false;
          //                     highlight['newProduct'] = false;
          //                     highlight['bopetFilms'] = false;
          //                     highlight['boppFilms'] = false;
          //                     highlight['cppFilms'] = false;
          //                     highlight['metalized'] = true;
          //                     highlight['aloxCoated'] = false;
          //                     highlight['speciality'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Metalized()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Metalized Films",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['metalized'] == true
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
          //                     Alldata.Productpageindex = 6;
          //                     current_val = 'Alox Coated Films';
          //                     highlight['allProducts'] = false;
          //                     highlight['newProduct'] = false;
          //                     highlight['bopetFilms'] = false;
          //                     highlight['boppFilms'] = false;
          //                     highlight['cppFilms'] = false;
          //                     highlight['metalized'] = false;
          //                     highlight['aloxCoated'] = true;
          //                     highlight['speciality'] = false;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => AloxCoated()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Alox Coated Films",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['aloxCoated'] == true
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
          //                     Alldata.Productpageindex = 7;
          //                     current_val = 'Speciality Films';
          //                     highlight['allProducts'] = false;
          //                     highlight['newProduct'] = false;
          //                     highlight['bopetFilms'] = false;
          //                     highlight['boppFilms'] = false;
          //                     highlight['cppFilms'] = false;
          //                     highlight['metalized'] = false;
          //                     highlight['aloxCoated'] = false;
          //                     highlight['speciality'] = true;
          //                   });
          //                   // Navigator.pushReplacement(
          //                   //   context,
          //                   //   MaterialPageRoute(
          //                   //       builder: (context) => Speciality()),
          //                   // );
          //                 },
          //                 child: Text(
          //                   "Speciality Films",
          //                   style: TextStyle(
          //                     fontSize: 16,
          //                     fontWeight: highlight['speciality'] == true
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
          //   padding: const EdgeInsets.all(12.0),
          //   child: Row(
          //     children: List.generate(
          //       250 ~/ 1,
          //       (index) => Expanded(
          //         child: Container(
          //           color: index % 2 == 0 ? Colors.transparent : Colors.grey,
          //           height: 2,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            child: Productslist[Alldata.Productpageindex],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
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
