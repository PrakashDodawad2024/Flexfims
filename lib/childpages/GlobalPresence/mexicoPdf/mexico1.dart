import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class mexico1 extends StatefulWidget {
  @override
  State<mexico1> createState() => _mexico1State();
}

class _mexico1State extends State<mexico1> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/mexico/pdf/FFMX_2022_SCS-RC-05765.pdf');
  }
}
