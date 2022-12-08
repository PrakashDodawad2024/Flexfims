import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class egypt5 extends StatefulWidget {
  @override
  State<egypt5> createState() => _egypt5State();
}

class _egypt5State extends State<egypt5> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/egypt/pdf/FFE_SGS_ISO14001-2015_Certificate_2020.pdf');
  }
}
