import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Fstf extends StatefulWidget {
  @override
  State<Fstf> createState() => _FstfState();
}

class _FstfState extends State<Fstf> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/newproducts/pdf/F-STF-PDS-TDS.pdf');
  }
}
