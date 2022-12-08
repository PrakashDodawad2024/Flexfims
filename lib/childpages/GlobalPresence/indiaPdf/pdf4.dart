import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf4 extends StatefulWidget {
  @override
  State<pdf4> createState() => _pdf4State();
}

class _pdf4State extends State<pdf4> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/india/pdf/UFlex_TUV_ISO9001_Certificate_2021.pdf');
  }
}
