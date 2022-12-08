import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class UsaPdf extends StatefulWidget {
  const UsaPdf({super.key});

  @override
  State<UsaPdf> createState() => _UsaPdfState();
}

class _UsaPdfState extends State<UsaPdf> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf');
  }
}
