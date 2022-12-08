import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondCarousel extends StatefulWidget {
  List<Map<String, String>> imageList2 = [];
  SecondCarousel({required this.imageList2});

  @override
  State<SecondCarousel> createState() => _SecondCarouselState();
}

class _SecondCarouselState extends State<SecondCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
          items: widget.imageList2
              .map((e) => ClipRRect(
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          e['image'] as String,
                          width: 1050,
                          height: 350,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
