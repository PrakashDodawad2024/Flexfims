import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class russia2 extends StatefulWidget {
  @override
  State<russia2> createState() => _russia2State();
}

class _russia2State extends State<russia2> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/russia/pdf/FFPO_2021_ISO9001-2015_Intertek_ENG.pdf');
  }
}
