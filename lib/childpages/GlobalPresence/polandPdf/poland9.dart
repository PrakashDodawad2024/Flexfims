import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class poland9 extends StatefulWidget {
  @override
  State<poland9> createState() => _poland9State();
}

class _poland9State extends State<poland9> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/poland/pdf/FFPO_2021_ISO45001-2018_Intertek_ENG.pdf');
  }
}
