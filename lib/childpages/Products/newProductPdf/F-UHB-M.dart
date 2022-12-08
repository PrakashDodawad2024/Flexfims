import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Fuhbm extends StatefulWidget {
  @override
  State<Fuhbm> createState() => _FuhbmState();
}

class _FuhbmState extends State<Fuhbm> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset('assets/products/newproducts/pdf/F-UHB-M.pdf');
  }
}
