import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class poland3 extends StatefulWidget {
  @override
  State<poland3> createState() => _poland3State();
}

class _poland3State extends State<poland3> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/poland/pdf/FFPO_2021_ISO14001-2015_Intertek_ENG.pdf');
  }
}
