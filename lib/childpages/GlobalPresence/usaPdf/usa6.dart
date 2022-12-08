import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class usa6 extends StatefulWidget {
  @override
  State<usa6> createState() => _usa6State();
}

class _usa6State extends State<usa6> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/FFUSA_2020_Permit_Cert_Dep_PublicHealth.pdf');
  }
}
