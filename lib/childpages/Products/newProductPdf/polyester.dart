import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class polyester extends StatefulWidget {
  @override
  State<polyester> createState() => _polyesterState();
}

class _polyesterState extends State<polyester> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/newproducts/pdf/F-HMB-PSS-TDS.pdf');
  }
}
