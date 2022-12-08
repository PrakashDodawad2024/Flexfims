import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GroupCarousel extends StatefulWidget {
  List<Map<String, String>> imageList = [];
  GroupCarousel({required this.imageList});

  @override
  State<GroupCarousel> createState() => _GroupCarouselState();
}

class _GroupCarouselState extends State<GroupCarousel> {
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
          items: widget.imageList
              .map((e) => ClipRRect(
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          e['image'] as String,
                          width: 1050,
                          height: 350,
                          fit: BoxFit.fill,
                        ),
                        // Container(
                        //   alignment: Alignment.bottomRight,
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(
                        //       bottom: 27,
                        //       right: 10,
                        //     ),
                        //     child: Text(
                        //       '${e['text']}',
                        //       style: TextStyle(fontSize: 5),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
