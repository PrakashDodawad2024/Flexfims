import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class mexico4 extends StatefulWidget {
  @override
  State<mexico4> createState() => _mexico4State();
}

class _mexico4State extends State<mexico4> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/mexico/pdf/FFMX_2020_ISO14001_2015_BV.pdf');
  }
}
