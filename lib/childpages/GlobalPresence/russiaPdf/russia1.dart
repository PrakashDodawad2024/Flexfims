import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class russia1 extends StatefulWidget {
  @override
  State<russia1> createState() => _russia1State();
}

class _russia1State extends State<russia1> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/russia/pdf/Transparent_PET_Declaration_Conformity.pdf');
  }
}
