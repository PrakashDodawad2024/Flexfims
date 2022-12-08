import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class mexico5 extends StatefulWidget {
  @override
  State<mexico5> createState() => _mexico5State();
}

class _mexico5State extends State<mexico5> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/mexico/pdf/FFMX_2020_FSSC_22000_BV.pdf');
  }
}
