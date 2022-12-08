import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Sustainable extends StatefulWidget {
  const Sustainable({super.key});

  @override
  State<Sustainable> createState() => _SustainableState();
}

Map<String, String> bopet = {
  'text': ' 1. PCR Asclepius Films',
};

class _SustainableState extends State<Sustainable> {
  String selected = '';
  final List<Map<String, dynamic>> bopetList = [
    {
      'text': '  1. Transparent Film',
      'image':
          'assets/products/boppfilms/sustain/Sustainable_Transparent_film.jpg',
      'text1': 'High Heat Resistance Film',
      'text2': 'B-THR',
      'text3': ' 18 - 20 μm',
      'text4':
          ' B-THR is a functionally modified BOPP film having one side modified with high heat resistance and other side treated',
      'text5':
          'High heat resistance (SIT >145°C), Good jaw release property, Good seal finishing In stand up pouch & 3D bags, Inside/bottom gusseted film will not seal to itself, Good optics, Good machinability and Sustainable recycle solution',
      'text6':
          ' Stand up pouches, 3D pouches and Can replace PET (less OTR sensitive)',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  2. Matte Film',
      'image': 'assets/products/boppfilms/sustain/Sustainable_Matte_film.jpg',
      'text1': 'Matt High Heat Resistance Film',
      'text2': 'B-MHR',
      'text3': ' 18 - 20 μm',
      'text4':
          ' B-MHR is a functionally modified high heat resistance matt layer on one side and other side glossy treated layer for good printability.',
      'text5':
          ' High heat resistance (SIT >130°C), Good seal finishing in stand-up pouch & 3D bags, Inside/bottom gusseted film will not seal to itself, Good matt dispersion and Good contact clarity',
      'text6': 'Stand-up pouches and 3D pouches',
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
