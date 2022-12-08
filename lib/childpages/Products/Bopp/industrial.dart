import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Industrial extends StatefulWidget {
  const Industrial({super.key});

  @override
  State<Industrial> createState() => _IndustrialState();
}

Map<String, String> bopet = {
  'text': '1. Transparent Film',
};

class _IndustrialState extends State<Industrial> {
  String selected = '';
  final List<Map<String, dynamic>> bopetList = [
    {
      'text': ' 1. Transparent Film',
      'image': 'assets/products/boppfilms/industry/Industrial_Transparent.jpg',
      'text1': 'Adhesive Tape film',
      'text2': 'B-Tap',
      'text3': ' 23 - 29 μm',
      'text4':
          'B-TAP is a non heat sealable film with one side flame treatment for adheisve/hot melt tape & textile bag applications',
      'text5':
          'Excellent opacity & whiteness, Superb gloss, Excellent stiffness, Good printability and High yield',
      'text6': '  Wrap around label',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: ExpansionPanelList(
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              bopetList[index]['isexpanded'] = !isExpanded;
            });
          },
          children: bopetList.map<ExpansionPanel>((item) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  child: SizedBox(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  color: selected == '${item['text']}'
                                      ? Colors.red
                                      : Colors.blue,
                                  height: 35,
                                  width: 3,
                                ),
                              ),
                              Icon(
                                Icons.picture_as_pdf_outlined,
                                size: 24.0,
                                color: selected == '${item['text']}'
                                    ? Colors.red
                                    : Colors.blue,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '    ${item['text']} ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: selected == '${item['text']}'
                                              ? Colors.red
                                              : Colors.blue,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 215, 232, 246),
                  ),
                );
              },
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Image.asset("${item['image']}"),
                  ),
                  Container(
                    child: SizedBox(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.double_arrow_outlined,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 350,
                                  child: Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '   Product Highlights:',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: ' ${item['text1']} ',
                                            style: TextStyle(
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.double_arrow_outlined,
                                  size: 15.0,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '   Film Grade:',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: ' ${item['text2']} ',
                                          style: TextStyle(
                                            fontSize: 15,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.double_arrow_outlined,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 350,
                                child: Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '   Thickness (Microns):',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: ' ${item['text3']} ',
                                          style: TextStyle(
                                            fontSize: 15,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.double_arrow_outlined,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 350,
                                  child: Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '   Description',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: ' ${item['text4']} ',
                                            style: TextStyle(
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.double_arrow_outlined,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 350,
                                  child: Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '   Key Features:',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: ' ${item['text5']} ',
                                            style: TextStyle(
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.double_arrow_outlined,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 350,
                                  child: Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '   Applications:',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: ' ${item['text6']} ',
                                            style: TextStyle(
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.double_arrow_outlined,
                                  size: 15.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    SfPdfViewer.asset(' ${item['pdf']} ');
                                  },
                                  child: Container(
                                    child: Text(
                                      '  DOWNLOAD DATA SHEET',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.picture_as_pdf_rounded,
                              size: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              isExpanded: item['isexpanded'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
