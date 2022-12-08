import 'package:flexfilms/childpages/Products/ProductsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';

class DownProducts extends StatefulWidget {
  const DownProducts({super.key});

  @override
  State<DownProducts> createState() => _DownProductsState();
}

class _DownProductsState extends State<DownProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductsPage()),
                  );
                }),
                child: Text(
                  'PRODUCTS',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
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
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 0;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "All Products",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 1;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "New Product Launches",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 2;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "BOPET Films",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 3;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "BOPP Films",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 4;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "CPP Films",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 5;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Metalized Films",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.play_arrow, size: 14),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 6;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Alox Coated Films",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.play_arrow,
                        size: 14,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: InkWell(
                          onTap: (() {
                            Alldata.homepageindex = 2;
                            Alldata.Productpageindex = 7;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => MyHomePage())));
                          }),
                          child: Text(
                            "Speciality Films",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
