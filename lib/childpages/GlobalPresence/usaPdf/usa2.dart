import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class usa2 extends StatefulWidget {
  @override
  State<usa2> createState() => _usa2State();
}

class _usa2State extends State<usa2> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/FFUSA_2020_ISO9001-2015_CERT_EAGLE.pdf');
  }
}
