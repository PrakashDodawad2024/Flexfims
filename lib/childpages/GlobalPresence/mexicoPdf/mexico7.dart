import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class mexico7 extends StatefulWidget {
  @override
  State<mexico7> createState() => _mexico7State();
}

class _mexico7State extends State<mexico7> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/mexico/pdf/FFMX_2018_FDA_CERTIFICATE_2018.pdf');
  }
}
