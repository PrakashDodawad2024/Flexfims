import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class egypt7 extends StatefulWidget {
  @override
  State<egypt7> createState() => _egypt7State();
}

class _egypt7State extends State<egypt7> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/egypt/pdf/Quality-Packaging-Safety-Policy.pdf');
  }
}
