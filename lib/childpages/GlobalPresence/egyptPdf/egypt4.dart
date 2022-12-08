import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class egypt4 extends StatefulWidget {
  @override
  State<egypt4> createState() => _egypt4State();
}

class _egypt4State extends State<egypt4> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/egypt/pdf/FFE_SGS_ISO9001-2015_Certificate_2020.pdf');
  }
}
