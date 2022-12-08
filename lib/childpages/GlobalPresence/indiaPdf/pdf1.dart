import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf1 extends StatefulWidget {
  @override
  State<pdf1> createState() => _pdf1State();
}

class _pdf1State extends State<pdf1> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/india/pdf/UFlex_BRC_Certificate_2020.pdf');
  }
}
