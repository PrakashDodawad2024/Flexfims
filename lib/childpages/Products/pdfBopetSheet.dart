import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class bopetSheet extends StatefulWidget {
  const bopetSheet({super.key});

  @override
  State<bopetSheet> createState() => _bopetSheetState();
}

class _bopetSheetState extends State<bopetSheet> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/bopetfilms/Safety-Data-Sheet-BOPET-2021.pdf');
  }
}
