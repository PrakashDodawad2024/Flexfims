import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class poland5 extends StatefulWidget {
  @override
  State<poland5> createState() => _poland5State();
}

class _poland5State extends State<poland5> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/poland/pdf/FFPO_2021_ISO22000-2018_Intertek_ENG.pdf');
  }
}
