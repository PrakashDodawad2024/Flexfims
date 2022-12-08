import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class egypt1 extends StatefulWidget {
  @override
  State<egypt1> createState() => _egypt1State();
}

class _egypt1State extends State<egypt1> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/egypt/pdf/FFE_AIB_Certificate_2022.pdf');
  }
}
