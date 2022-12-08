import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'DownLogout/groupWebsite.dart';

class WebsiteCarousel3 extends StatefulWidget {
  List<Map<String, String>> imageList = [];
  WebsiteCarousel3({required this.imageList});

  @override
  State<WebsiteCarousel3> createState() => _WebsiteCarousel3State();
}

class _WebsiteCarousel3State extends State<WebsiteCarousel3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                autoPlay: false,
              ),
              items: widget.imageList
                  .map((e) => ClipRRect(
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 70),
                              child: Image.asset(
                                e['image'] as String,
                                width: 500,
                                height: 200,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 105),
                                child: Center(
                                  child: Text(
                                    '${e['title']}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 175),
                                child: Text(
                                  '${e['text']}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
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
