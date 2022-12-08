import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class egypt6 extends StatefulWidget {
  @override
  State<egypt6> createState() => _egypt6State();
}

class _egypt6State extends State<egypt6> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/egypt/pdf/FFE_Health_Safety_Environmant_Policy.pdf');
  }
}
