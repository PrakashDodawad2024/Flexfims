import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf6 extends StatefulWidget {
  @override
  State<pdf6> createState() => _pdf6State();
}

class _pdf6State extends State<pdf6> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/uae/pdf/FFUAE_ISO14001-2015_22102020.pdf');
  }
}
