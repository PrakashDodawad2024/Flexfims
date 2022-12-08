import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf3 extends StatefulWidget {
  @override
  State<pdf3> createState() => _pdf3State();
}

class _pdf3State extends State<pdf3> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/india/pdf/UFlex_TUV_ISO14001_Certificate_2021.pdf');
  }
}
