import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class usa5 extends StatefulWidget {
  @override
  State<usa5> createState() => _usa5State();
}

class _usa5State extends State<usa5> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/FFUSA_2022_Kosher_CERT_KC7806774-1.pdf');
  }
}
