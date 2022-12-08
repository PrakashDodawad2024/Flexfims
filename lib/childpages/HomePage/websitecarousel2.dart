import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'DownLogout/groupWebsite.dart';

class WebsiteCarousel2 extends StatefulWidget {
  List<Map<String, String>> imageList = [];
  WebsiteCarousel2({required this.imageList});

  @override
  State<WebsiteCarousel2> createState() => _WebsiteCarousel2State();
}

class _WebsiteCarousel2State extends State<WebsiteCarousel2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      color: Colors.red[400],
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: false,
              ),
              items: widget.imageList
                  .map((e) => ClipRRect(
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 100),
                              child: Image.asset(
                                e['image'] as String,
                                width: 1050,
                                height: 600,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Center(
                                  child: Text(
                                    '${e['title']}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 145),
                                child: Text(
                                  '${e['text']}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 195),
                              child: Center(
                                child: Container(
                                  width: 90,
                                  height: 30,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      // Alldata.homepageindex = 1;

                                      // Navigator.of(context).push(MaterialPageRoute(
                                      //   builder: (context) => MyHomePage(),
                                      // ));
                                    },
                                    child: Text(
                                      'VIEW MORE>>',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  )),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
