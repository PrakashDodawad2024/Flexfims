import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Fhbp extends StatefulWidget {
  @override
  State<Fhbp> createState() => _FhbpState();
}

class _FhbpState extends State<Fhbp> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/newproducts/pdf/F-HBP-PDS-TDS.pdf');
  }
}
