import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class mexico3 extends StatefulWidget {
  @override
  State<mexico3> createState() => _mexico3State();
}

class _mexico3State extends State<mexico3> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/mexico/pdf/FFMX_2020_ISO9001_2015_BV.pdf');
  }
}
