import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'DownLogout/groupWebsite.dart';

class WebsiteCarousel4 extends StatefulWidget {
  List<Map<String, String>> imageList = [];
  WebsiteCarousel4({required this.imageList});

  @override
  State<WebsiteCarousel4> createState() => _WebsiteCarousel4State();
}

class _WebsiteCarousel4State extends State<WebsiteCarousel4> {
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
                              padding: const EdgeInsets.only(bottom: 85),
                              child: Image.asset(
                                e['image'] as String,
                                width: 500,
                                height: 200,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 70),
                                child: Center(
                                  child: Text(
                                    '${e['title']}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 154),
                                child: Text(
                                  '${e['text']}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
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
