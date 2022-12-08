import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Certification extends StatefulWidget {
  const Certification({super.key});

  @override
  State<Certification> createState() => _CertificationState();
}

class _CertificationState extends State<Certification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
              child: Text(
                'CERTIFICATION / RECOGNITION / ACCREDITATION',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_right_sharp,
                            color: Colors.blue,
                          ),
                          Text(
                            'ISO 9001:2000 for Quality Management Systems',
                            style: TextStyle(fontSize: 14, color: Colors.black),
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
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_right_sharp,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 340,
                            child: Text(
                              'ISO 14001:2004 for Environmental Management systems',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_right_sharp,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 340,
                            child: Text(
                              'ISO 22000:2005 conforming to hygiene and food safety applications',
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_right_sharp,
                            color: Colors.blue,
                          ),
                          Text(
                            'HACCP based Food Safety System',
                            style: TextStyle(fontSize: 14, color: Colors.black),
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
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_double_arrow_right_sharp,
                            color: Colors.blue,
                          ),
                          Text(
                            'REACH Compliance',
                            style: TextStyle(fontSize: 14, color: Colors.black),
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
