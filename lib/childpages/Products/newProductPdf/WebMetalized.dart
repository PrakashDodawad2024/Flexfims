import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class WebMetalized extends StatefulWidget {
  @override
  State<WebMetalized> createState() => _WebMetalizedState();
}

class _WebMetalizedState extends State<WebMetalized> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/newproducts/pdf/Web-Inspection-PDS.pdf');
  }
}
