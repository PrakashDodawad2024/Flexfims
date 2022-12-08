import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CppSheet extends StatefulWidget {
  const CppSheet({super.key});

  @override
  State<CppSheet> createState() => _CppSheetState();
}

class _CppSheetState extends State<CppSheet> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
        'assets/products/cppfilms/Safety-Data-Sheet-of-cpp.pdf');
  }
}
