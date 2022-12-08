import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf7 extends StatefulWidget {
  @override
  State<pdf7> createState() => _pdf7State();
}

class _pdf7State extends State<pdf7> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/uae/pdf/FFUAE_ISO22000-2018_14122020.pdf');
  }
}
