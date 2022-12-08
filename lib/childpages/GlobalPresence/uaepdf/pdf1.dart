import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf5 extends StatefulWidget {
  @override
  State<pdf5> createState() => _pdf5State();
}

class _pdf5State extends State<pdf5> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/uae/pdf/FFUAE_ISO9001-2015_22102020.pdf');
  }
}
