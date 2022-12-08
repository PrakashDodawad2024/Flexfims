import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf2 extends StatefulWidget {
  @override
  State<pdf2> createState() => _pdf2State();
}

class _pdf2State extends State<pdf2> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/india/pdf/UFlex_TUV_ISO45001_Certificate_2021.pdf');
  }
}
