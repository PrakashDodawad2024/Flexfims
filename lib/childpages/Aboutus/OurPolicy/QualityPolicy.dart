import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Quality extends StatefulWidget {
  const Quality({super.key});

  @override
  State<Quality> createState() => _QualityState();
}

class _QualityState extends State<Quality> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Center(
                child: Text(
                  'QUALITY POLICY',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'We, Flex Films in our quest to become the most preferred film supplier in the world, resolve:',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 1.0,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                image: DecorationImage(
                  image:
                      AssetImage("assets/aboutUs/ourpolicy/quality-banner.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 55),
                            child: Icon(
                              Icons.done,
                              size: 25,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 345,
                            child: Text(
                              "To instill utmost faith and trust in our clients by consistently manufacturing products meeting their requirements, while simultaneously conforming to highest quality standards;",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
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
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Icon(
                          Icons.done,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Maintain proximity with our clients spread in over 150 countries;",
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
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Icon(
                          Icons.done,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Process any quantum of order and ensure just–in-time deliveries in any part of the globe;",
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
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Icon(
                          Icons.done,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Ensure speed to market reach to the best advantage of our clients;",
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
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Icon(
                          Icons.done,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Helps our customers attain their sustainability goal with our green technology and films.",
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
