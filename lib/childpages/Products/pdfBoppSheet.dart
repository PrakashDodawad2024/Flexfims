import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BoppSheet extends StatefulWidget {
  const BoppSheet({super.key});

  @override
  State<BoppSheet> createState() => _BoppSheetState();
}

class _BoppSheetState extends State<BoppSheet> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/boppfilms/Safety-Data-Sheet BOPP-2021.pdf');
  }
}
