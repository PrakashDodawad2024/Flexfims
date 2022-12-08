import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class egypt2 extends StatefulWidget {
  @override
  State<egypt2> createState() => _egypt2State();
}

class _egypt2State extends State<egypt2> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/egypt/pdf/FFE_BRCGS_AA+Certificate_2022.pdf');
  }
}
