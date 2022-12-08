import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class mexicoPdf extends StatefulWidget {
  const mexicoPdf({super.key});

  @override
  State<mexicoPdf> createState() => _mexicoPdfState();
}

class _mexicoPdfState extends State<mexicoPdf> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf');
  }
}
