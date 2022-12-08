import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class poland7 extends StatefulWidget {
  @override
  State<poland7> createState() => _poland7State();
}

class _poland7State extends State<poland7> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/poland/pdf/FFPO_2021_ISO50001-2018_Lloyds_ENG.pdf');
  }
}
