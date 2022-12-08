import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfstandardProducts extends StatefulWidget {
  @override
  State<PdfstandardProducts> createState() => _PdfstandardProductsState();
}

class _PdfstandardProductsState extends State<PdfstandardProducts> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/allProducts/pdf/Standard-Products-Quick-Reference-Guide.pdf');
  }
}
