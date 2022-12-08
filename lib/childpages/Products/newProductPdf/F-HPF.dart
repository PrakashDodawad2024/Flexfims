import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Fhpf extends StatefulWidget {
  @override
  State<Fhpf> createState() => _FhpfState();
}

class _FhpfState extends State<Fhpf> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/newproducts/pdf/F-HPF-PDS-TDS.pdf');
  }
}
