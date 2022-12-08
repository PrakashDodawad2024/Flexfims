import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class poland13 extends StatefulWidget {
  @override
  State<poland13> createState() => _poland13State();
}

class _poland13State extends State<poland13> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/poland/pdf/FFPO_2020_FDA-2017.pdf');
  }
}
