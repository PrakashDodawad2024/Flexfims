import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfspecialityProducts extends StatefulWidget {
  @override
  State<PdfspecialityProducts> createState() => _PdfspecialityProductsState();
}

class _PdfspecialityProductsState extends State<PdfspecialityProducts> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/allProducts/pdf/Specialty-Product-Reference-Guide.pdf');
  }
}
