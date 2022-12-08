import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Environment extends StatefulWidget {
  const Environment({super.key});

  @override
  State<Environment> createState() => _EnvironmentState();
}

class _EnvironmentState extends State<Environment> {
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
                  'ENVIRONMENT POLICY',
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
                        height: 100,
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
                                      'We at Flex Films stand committed towards Environmental Sustainability with all our business practices aimed at supporting the ‘Circular Economy’ through our philosophy of REDUCE – REUSE- RECYCLE! We do this by:',
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
                  image: AssetImage(
                      "assets/aboutUs/ourpolicy/enviroment-banner.jpg"),
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
                          child: Icon(
                            Icons.done,
                            size: 25,
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: SizedBox(
                              width: 340,
                              child: Text(
                                "Optimizing the use of renewable resources.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
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
                      child: Icon(
                        Icons.done,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Maximizing post-consumer recyclate.",
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
                        Icons.done,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Reducing production waste.",
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
                        Icons.done,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Reprocessing production waste.",
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
                        Icons.done,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Using non-recyclable waste to produce energy.",
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
                        Icons.done,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 340,
                          child: Text(
                            "Optimizing energy consumption",
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
