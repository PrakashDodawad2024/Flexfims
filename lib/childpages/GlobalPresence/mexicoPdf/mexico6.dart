import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class mexico6 extends StatefulWidget {
  @override
  State<mexico6> createState() => _mexico6State();
}

class _mexico6State extends State<mexico6> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/mexico/pdf/FFMX_2020_FDA_CERTIFICATE_2020.pdf');
  }
}
