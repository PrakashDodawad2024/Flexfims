import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class usa7 extends StatefulWidget {
  @override
  State<usa7> createState() => _usa7State();
}

class _usa7State extends State<usa7> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/FFUSA_2022_Drug-Free-Cert_Commonwealth-KY.pdf');
  }
}
