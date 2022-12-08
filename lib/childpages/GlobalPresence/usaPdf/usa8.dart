import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class usa8 extends StatefulWidget {
  @override
  State<usa8> createState() => _usa8State();
}

class _usa8State extends State<usa8> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/Terms_Conditions_of_Sale_FF_USA.pdf');
  }
}
