import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class poland1 extends StatefulWidget {
  @override
  State<poland1> createState() => _poland1State();
}

class _poland1State extends State<poland1> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/poland/pdf/FFPO_2021_ISO9001-2015_Intertek_ENG.pdf');
  }
}
