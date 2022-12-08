import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class egypt3 extends StatefulWidget {
  @override
  State<egypt3> createState() => _egypt3State();
}

class _egypt3State extends State<egypt3> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/egypt/pdf/FFE_SGS_ISO45001-2018_Certificate_2020.pdf');
  }
}
