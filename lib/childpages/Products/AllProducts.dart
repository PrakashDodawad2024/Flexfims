import 'package:flexfilms/childpages/Products/pdfspecialityProduct.dart';
import 'package:flexfilms/childpages/Products/pdfstandardProducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';

class allProducts extends StatefulWidget {
  const allProducts({super.key});

  @override
  State<allProducts> createState() => _allProductsState();
}

class _allProductsState extends State<allProducts> {
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
                      text: 'All ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'Products ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'To view Standard Products Quick Reference Guide ',
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PdfspecialityProducts(),
              ));
            },
            child: Text('Click here ',
                style: TextStyle(color: Colors.blue, fontSize: 16)),
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
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'To view Speciality Products Quick Reference Guide ',
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PdfspecialityProducts(),
              ));
            },
            child: Text('Click here ',
                style: TextStyle(color: Colors.blue, fontSize: 16)),
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.red,
                              height: 4,
                              width: 380,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 38,
                                              color: Color.fromARGB(
                                                  255, 247, 106, 96),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "BOPET Films",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 28,
                                                    ),
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
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: SizedBox(
                                                  width: 340,
                                                  child: Center(
                                                    child: Text(
                                                      "We manufacture a wide range of Biaxially Oriented Polyethylene Terephthalate (BOPET) Films under the brand name FLEXPETTM.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
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
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(5),
                                      child: Center(
                                          child: InkWell(
                                        onTap: () {
                                          Alldata.homepageindex = 2;
                                          Alldata.Productpageindex = 2;
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      MyHomePage())));
                                        },
                                        child: Text(
                                          'VIEW MORE>>',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.red,
                              height: 4,
                              width: 380,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 38,
                                              color: Color.fromARGB(
                                                  255, 247, 106, 96),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "BOPP Films",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 28,
                                                    ),
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
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: SizedBox(
                                                  width: 340,
                                                  child: Center(
                                                    child: Text(
                                                      "We manufacture a wide range of Biaxially Oriented Polypropylene (BOPP) Films under the brand name FLEXOPPTM.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
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
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(5),
                                      child: Center(
                                          child: InkWell(
                                        onTap: () {
                                          Alldata.homepageindex = 2;
                                          Alldata.Productpageindex = 3;
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      MyHomePage())));
                                        },
                                        child: Text(
                                          'VIEW MORE>>',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.red,
                              height: 4,
                              width: 380,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 38,
                                              color: Color.fromARGB(
                                                  255, 247, 106, 96),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Metalized Films",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 28,
                                                    ),
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
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: SizedBox(
                                                  width: 340,
                                                  child: Center(
                                                    child: Text(
                                                      "We manufacture a wide range of metalized Biaxially Oriented Polyethylene Terephthalate (BOPET) Films; Biaxially Oriented Polypropylene (BOPP) Films and Cast Polypropylene (CPP) Films under the brand name FLEXMETPROTECTTM.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
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
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(5),
                                      child: Center(
                                          child: InkWell(
                                        onTap: () {
                                          Alldata.homepageindex = 2;
                                          Alldata.Productpageindex = 5;
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      MyHomePage())));
                                        },
                                        child: Text(
                                          'VIEW MORE>>',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.red,
                              height: 4,
                              width: 380,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 38,
                                              color: Color.fromARGB(
                                                  255, 247, 106, 96),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Alox Coated Films",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 28,
                                                    ),
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
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: SizedBox(
                                                  width: 340,
                                                  child: Center(
                                                    child: Text(
                                                      "AlOx coating is the application of a thin and highly transparent coating of aluminium oxide on packaging films that gives the materials extremely high moisture and gas barrier properties that rival those of aluminium foils and metalized Films.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
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
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(5),
                                      child: Center(
                                          child: InkWell(
                                        onTap: () {
                                          Alldata.homepageindex = 2;
                                          Alldata.Productpageindex = 6;
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      MyHomePage())));
                                        },
                                        child: Text(
                                          'VIEW MORE>>',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
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
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.red,
                              height: 4,
                              width: 380,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 38,
                                              color: Color.fromARGB(
                                                  255, 247, 106, 96),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "CPP Films",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 28,
                                                    ),
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
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: SizedBox(
                                                  width: 340,
                                                  child: Center(
                                                    child: Text(
                                                      "We manufacture Cast Polypropylene (CPP) Films under the brand name FLEXCPPTM. Our production capacity for FLEXCPPTM films is approximately 11,000 TPA (17.5 million lbs per annum).",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
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
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(5),
                                      child: Center(
                                          child: InkWell(
                                        onTap: () {
                                          Alldata.homepageindex = 2;
                                          Alldata.Productpageindex = 4;
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      MyHomePage())));
                                        },
                                        child: Text(
                                          'VIEW MORE>>',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 30),
            child: Container(
              child: Row(
                children: [
                  Flexible(
                    child: Card(
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.red,
                              height: 4,
                              width: 380,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 38,
                                              color: Color.fromARGB(
                                                  255, 247, 106, 96),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Speciality Films",
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: TextStyle(
                                                      fontSize: 28,
                                                    ),
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
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Center(
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: SizedBox(
                                                  width: 340,
                                                  child: Center(
                                                    child: Text(
                                                      "Our wide range of Specialty Films brings about the real value addition for the convertors by enhancing the quality and functionality of the ensuing packaging making it a win-win for brands and consumers alike.",
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      ),
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
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 110,
                                      height: 40,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(5),
                                      child: Center(
                                          child: InkWell(
                                        onTap: () {
                                          Alldata.homepageindex = 2;
                                          Alldata.Productpageindex = 7;
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      MyHomePage())));
                                        },
                                        child: Text(
                                          'VIEW MORE>>',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
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
