import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Certificate.dart';

class PdfCertificate extends StatefulWidget {
  const PdfCertificate({super.key});

  @override
  State<PdfCertificate> createState() => _PdfCertificateState();
}

class _PdfCertificateState extends State<PdfCertificate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Certificate(),
              ));
            },
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1.0,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                image: DecorationImage(
                  image: AssetImage("assets/home/certificate1.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Center(
              child: Text(
                'Flex Films has set up the global platform for converters , where they can expect more and better every time! Manufacturing in all major continents and enjoying a formidable market presence in over 150 countries, Flex Films possesses the perfect solution to keep the converting industry much ahead of its time!!!',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
