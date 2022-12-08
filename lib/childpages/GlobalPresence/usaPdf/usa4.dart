import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class usa4 extends StatefulWidget {
  @override
  State<usa4> createState() => _usa4State();
}

class _usa4State extends State<usa4> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/FFUSA_2022_AIB_885-1000_Cert_27256.pdf');
  }
}
