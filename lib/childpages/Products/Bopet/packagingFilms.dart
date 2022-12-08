import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Packaging extends StatefulWidget {
  const Packaging({super.key});

  @override
  State<Packaging> createState() => _PackagingState();
}

Map<String, String> bopet = {
  'text': '1. Antiskid Films',
};

class _PackagingState extends State<Packaging> {
  String selected = '';
  final List<Map<String, dynamic>> bopetList = [
    {
      'text': '  1. Antiskid Films',
      'image': 'assets/products/bopetfilms/images/PF_Antiskid_Films.jpg',
      'text1': ' F-ESB',
      'text2': ' 12 - 23 μm',
      'text3':
          ' This grade have special functional surface so as to provide easy stacking of bags and restrict the slippage while stacking.',
      'text4':
          ' This film helps during palletizing, storage and stacking of bags in supermarket.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  2. Heat Sealable Films',
      'image': 'assets/products/bopetfilms/images/PF_Heat_Sealable_Films.jpg',
      'text1': ' F-HSP',
      'text2': ' 12 - 50 μm',
      'text3':
          ' This grade of film is a co-extruded polyester film having one side heat sealable layer.',
      'text4':
          ' This film helps during palletizing, storage and stacking of bags in supermarket.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  3. Isotropic Films',
      'image': 'assets/products/bopetfilms/images/PF_Isotropic_Films.jpg',
      'text1': '  F-IST',
      'text2': ' 12 - 36 μm',
      'text3': ' It has Improved tensile strength and elongation properties.',
      'text4':
          ' This grade of film is used for Lidding application in Dairy products.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  4. Matte Films',
      'image': 'assets/products/bopetfilms/images/PF_Matte_Films.jpg',
      'text1': ' F-MAT',
      'text2': ' 12 - 23 μm',
      'text3':
          ' : This grade of film contain a special additive to give matt surface.',
      'text4':
          ' Thermal lamination, Label application, Conversion application & Board lamination.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 5. Metalizable Films',
      'image': 'assets/products/bopetfilms/images/PF_Metalizable_Films.jpg',
      'text1': ' F-MTG',
      'text2': ' 9 - 50 μm',
      'text3':
          'This is a transparent film with excellent clarity to give good gloss after metallization. The film is available in two types, viz., 1.Plain (both side untreated (UT)) 2.One side Corona treated film (CT), the metallization on the corona treated side gives good adhesion.',
      'text4':
          'This grade of film is used in vacuum metallization & for further usage in flexible packaging as a barrier substrate.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 6. Co-extruded Films',
      'image': 'assets/products/bopetfilms/images/PF_Co-extruded_Films.jpg',
      'text1': ' F-CSP',
      'text2': ' 10 - 23 μm',
      'text3':
          ' This grade of film is a co-extruded polyester film having one side special functional layer which shows excellent adhesion to solvent inks and provide excellent metal adhesion.',
      'text4':
          'This film is applicable for printing, lamination and metallization.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  7. Inline Primed Clear Films',
      'image':
          'assets/products/bopetfilms/images/PF_Inline_Primed Clear_Films.jpg',
      'text1': ' F-CLR-A1 & F-CLR-A2',
      'text2': ' 10 - 50 μm',
      'text3':
          ' F-CLR-A1 & A2 are transparent low haze BOPET film. F-CLR-A1 is one side Corona Treated & the other side Standard Primer Coated. F-CLR-A2 is one side Untreated & the other side Standard Primer coated.',
      'text4':
          ' Flexible Printing & Packaging. Suitable for hot fill & Pasteurization application.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  8. UV Offset Base Films',
      'image': 'assets/products/bopetfilms/images/PF_UV_Offset_Base_Films.jpg',
      'text1': ' F-UVC',
      'text2': ' 10 - 12 μm',
      'text3':
          ' F-UVC is a transparent BOPET film.This film is designed with a special surface suitable for UV offset sheet printing without any primer.',
      'text4':
          'Film is designed for UV offset sheet printing in box lamination application.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  9. Inline Primed Films',
      'image': 'assets/products/bopetfilms/images/PF_Inline_Primed Films.jpg',
      'text1': ' F-ATU',
      'text2': ' 10 - 50 μm',
      'text3':
          ' This film is having all the desired properties as mentioned under F-PAP. The primer coating done on one side of the film provides excellent anchorage to wide range of solvent and water based inks & adhesives hence increases the bond strength of laminate and the other side is plain polyester.',
      'text4':
          ' This grade of film is used for flexible packaging, specially Designed for FFS machines.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  10. White Opaque Films',
      'image': 'assets/products/bopetfilms/images/PF_White_Opaques.jpg',
      'text1': ' F-WUF',
      'text2': ' 12 - 55 μm',
      'text3':
          'F-WUF is a white opaque BOPET film. It is one side Special Chemical Coated surface with the other side being Untreated or Corona Treated.The coating done on one side of the film provides excellent anchorage of various inks & adhesives.',
      'text4':
          ' This film is suitable for jobs where white backing is required like lids, labels etc.mostly surface printed jobs.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  11. Formable PET Films',
      'image': 'assets/products/bopetfilms/images/PF_Formable_PET_Films.jpg',
      'text1': ' F-TFP',
      'text2': ' 12 - 36 μm',
      'text3':
          'This film is available in one side corona treated or both side Untreated.',
      'text4':
          ' This grade of film is used for thermoforming application and as BOPA replacement.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  12. Plain Packaging Films',
      'image': 'assets/products/bopetfilms/images/PF_Plain_Packaging_Films.jpg',
      'text1': ' F-PAP',
      'text2': ' 8 - 75 μm',
      'text3':
          ' F-PAP is a transparent BOPET film. The film is one side Corona Treated with one side Untreated or both sides Untreated.',
      'text4': ' Flexible packaging, specially designed for FFS machines.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  13. Both Side Coated Films',
      'image': 'assets/products/bopetfilms/images/BSCF_Transparent_Films.jpg',
      'text1': '  F-DSC-AA',
      'text2': ' 9 - 50 μm',
      'text3':
          'F-DSC-AA is a Both Side coated transparent BOPET film. The film is Standard Primer Coated on both sides.',
      'text4':
          ' This grade of film is used for flexible packaging, specially Designed for FFS machines. The film is suitable for hot fill & pasteurization application.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  14. Transparent High Barrier Film',
      'image':
          'assets/products/bopetfilms/images/PF_Transparent_High_Barrier_Film.jpg',
      'text1': ' F-PGS',
      'text2': ' 12 μm',
      'text3':
          ' F-PGS is a transparent high barrier polyester film. It is one side high barrier coating with excellent oxygen & good moisture barrier properties and other side untreated /corona treated film.',
      'text4':
          ' Film is designed where Oxygen Barrier & Water resistance is required, Dry Food packaging.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
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
                                          text: ' ${item['text1']} ',
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
                                          text: '   Thickness (Microns):',
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
                                          text: '  Properties:',
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
                                            text: '  Application:',
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




                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Film Grade:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text5']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Thickness (Microns):',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text6']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: Center(
                                            //     child: Row(
                                            //       mainAxisAlignment:
                                            //           MainAxisAlignment
                                            //               .spaceBetween,
                                            //       children: [
                                            //         Row(
                                            //           crossAxisAlignment:
                                            //               CrossAxisAlignment
                                            //                   .start,
                                            //           mainAxisAlignment:
                                            //               MainAxisAlignment
                                            //                   .start,
                                            //           children: [
                                            //             Icon(
                                            //               Icons
                                            //                   .double_arrow_outlined,
                                            //               size: 15.0,
                                            //             ),
                                            //             SizedBox(
                                            //               width: 350,
                                            //               child: Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Properties:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text7']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //           ],
                                            //         ),
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             crossAxisAlignment:
                                            //                 CrossAxisAlignment
                                            //                     .start,
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               SizedBox(
                                            //                 width: 350,
                                            //                 child: Text.rich(
                                            //                   TextSpan(
                                            //                     children: <
                                            //                         TextSpan>[
                                            //                       TextSpan(
                                            //                           text:
                                            //                               '   Application:',
                                            //                           style: TextStyle(
                                            //                               fontSize:
                                            //                                   15,
                                            //                               fontWeight:
                                            //                                   FontWeight.bold)),
                                            //                       TextSpan(
                                            //                           text:
                                            //                               ' ${e['text8']} ',
                                            //                           style:
                                            //                               TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                           )),
                                            //                     ],
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               InkWell(
                                            //                 onTap: () {
                                            //                   SfPdfViewer.asset(
                                            //                       ' ${e['pdf2']} ');
                                            //                 },
                                            //                 child: Container(
                                            //                   child: Text(
                                            //                     '  DOWNLOAD DATA SHEET',
                                            //                     style: TextStyle(
                                            //                         color: Colors
                                            //                             .blue),
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //           Icon(
                                            //             Icons
                                            //                 .picture_as_pdf_rounded,
                                            //             size: 15.0,
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Film Grade:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text9']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Thickness (Microns):',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text10']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: Center(
                                            //     child: Row(
                                            //       mainAxisAlignment:
                                            //           MainAxisAlignment
                                            //               .spaceBetween,
                                            //       children: [
                                            //         Row(
                                            //           crossAxisAlignment:
                                            //               CrossAxisAlignment
                                            //                   .start,
                                            //           mainAxisAlignment:
                                            //               MainAxisAlignment
                                            //                   .start,
                                            //           children: [
                                            //             Icon(
                                            //               Icons
                                            //                   .double_arrow_outlined,
                                            //               size: 15.0,
                                            //             ),
                                            //             SizedBox(
                                            //               width: 350,
                                            //               child: Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Properties:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text11']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //           ],
                                            //         ),
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             crossAxisAlignment:
                                            //                 CrossAxisAlignment
                                            //                     .start,
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               SizedBox(
                                            //                 width: 350,
                                            //                 child: Text.rich(
                                            //                   TextSpan(
                                            //                     children: <
                                            //                         TextSpan>[
                                            //                       TextSpan(
                                            //                           text:
                                            //                               '   Application:',
                                            //                           style: TextStyle(
                                            //                               fontSize:
                                            //                                   15,
                                            //                               fontWeight:
                                            //                                   FontWeight.bold)),
                                            //                       TextSpan(
                                            //                           text:
                                            //                               ' ${e['text12']} ',
                                            //                           style:
                                            //                               TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                           )),
                                            //                     ],
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               InkWell(
                                            //                 onTap: () {
                                            //                   SfPdfViewer.asset(
                                            //                       ' ${e['pdf3']} ');
                                            //                 },
                                            //                 child: Container(
                                            //                   child: Text(
                                            //                     '  DOWNLOAD DATA SHEET',
                                            //                     style: TextStyle(
                                            //                         color: Colors
                                            //                             .blue),
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //           Icon(
                                            //             Icons
                                            //                 .picture_as_pdf_rounded,
                                            //             size: 15.0,
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Film Grade:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text13']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Thickness (Microns):',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text14']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: Center(
                                            //     child: Row(
                                            //       mainAxisAlignment:
                                            //           MainAxisAlignment
                                            //               .spaceBetween,
                                            //       children: [
                                            //         Row(
                                            //           crossAxisAlignment:
                                            //               CrossAxisAlignment
                                            //                   .start,
                                            //           mainAxisAlignment:
                                            //               MainAxisAlignment
                                            //                   .start,
                                            //           children: [
                                            //             Icon(
                                            //               Icons
                                            //                   .double_arrow_outlined,
                                            //               size: 15.0,
                                            //             ),
                                            //             SizedBox(
                                            //               width: 350,
                                            //               child: Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Properties:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text15']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //           ],
                                            //         ),
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             crossAxisAlignment:
                                            //                 CrossAxisAlignment
                                            //                     .start,
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               SizedBox(
                                            //                 width: 350,
                                            //                 child: Text.rich(
                                            //                   TextSpan(
                                            //                     children: <
                                            //                         TextSpan>[
                                            //                       TextSpan(
                                            //                           text:
                                            //                               '   Application:',
                                            //                           style: TextStyle(
                                            //                               fontSize:
                                            //                                   15,
                                            //                               fontWeight:
                                            //                                   FontWeight.bold)),
                                            //                       TextSpan(
                                            //                           text:
                                            //                               ' ${e['text16']} ',
                                            //                           style:
                                            //                               TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                           )),
                                            //                     ],
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               InkWell(
                                            //                 onTap: () {
                                            //                   SfPdfViewer.asset(
                                            //                       ' ${e['pdf4']} ');
                                            //                 },
                                            //                 child: Container(
                                            //                   child: Text(
                                            //                     '  DOWNLOAD DATA SHEET',
                                            //                     style: TextStyle(
                                            //                         color: Colors
                                            //                             .blue),
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //           Icon(
                                            //             Icons
                                            //                 .picture_as_pdf_rounded,
                                            //             size: 15.0,
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Film Grade:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text17']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Thickness (Microns):',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text18']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: Center(
                                            //     child: Row(
                                            //       mainAxisAlignment:
                                            //           MainAxisAlignment
                                            //               .spaceBetween,
                                            //       children: [
                                            //         Row(
                                            //           crossAxisAlignment:
                                            //               CrossAxisAlignment
                                            //                   .start,
                                            //           mainAxisAlignment:
                                            //               MainAxisAlignment
                                            //                   .start,
                                            //           children: [
                                            //             Icon(
                                            //               Icons
                                            //                   .double_arrow_outlined,
                                            //               size: 15.0,
                                            //             ),
                                            //             SizedBox(
                                            //               width: 350,
                                            //               child: Text.rich(
                                            //                 TextSpan(
                                            //                   children: <
                                            //                       TextSpan>[
                                            //                     TextSpan(
                                            //                         text:
                                            //                             '   Properties:',
                                            //                         style: TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                             fontWeight:
                                            //                                 FontWeight.bold)),
                                            //                     TextSpan(
                                            //                         text:
                                            //                             ' ${e['text19']} ',
                                            //                         style:
                                            //                             TextStyle(
                                            //                           fontSize:
                                            //                               15,
                                            //                         )),
                                            //                   ],
                                            //                 ),
                                            //               ),
                                            //             ),
                                            //           ],
                                            //         ),
                                            //       ],
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             crossAxisAlignment:
                                            //                 CrossAxisAlignment
                                            //                     .start,
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               SizedBox(
                                            //                 width: 350,
                                            //                 child: Text.rich(
                                            //                   TextSpan(
                                            //                     children: <
                                            //                         TextSpan>[
                                            //                       TextSpan(
                                            //                           text:
                                            //                               '   Application:',
                                            //                           style: TextStyle(
                                            //                               fontSize:
                                            //                                   15,
                                            //                               fontWeight:
                                            //                                   FontWeight.bold)),
                                            //                       TextSpan(
                                            //                           text:
                                            //                               ' ${e['text20']} ',
                                            //                           style:
                                            //                               TextStyle(
                                            //                             fontSize:
                                            //                                 15,
                                            //                           )),
                                            //                     ],
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
                                            // Container(
                                            //   child: SizedBox(
                                            //     child: Center(
                                            //       child: Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .spaceBetween,
                                            //         children: [
                                            //           Row(
                                            //             mainAxisAlignment:
                                            //                 MainAxisAlignment
                                            //                     .start,
                                            //             children: [
                                            //               Icon(
                                            //                 Icons
                                            //                     .double_arrow_outlined,
                                            //                 size: 15.0,
                                            //               ),
                                            //               InkWell(
                                            //                 onTap: () {
                                            //                   SfPdfViewer.asset(
                                            //                       ' ${e['pdf5']} ');
                                            //                 },
                                            //                 child: Container(
                                            //                   child: Text(
                                            //                     '  DOWNLOAD DATA SHEET',
                                            //                     style: TextStyle(
                                            //                         color: Colors
                                            //                             .blue),
                                            //                   ),
                                            //                 ),
                                            //               ),
                                            //             ],
                                            //           ),
                                            //           Icon(
                                            //             Icons
                                            //                 .picture_as_pdf_rounded,
                                            //             size: 15.0,
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ),
                                            //   ),
                                            // ),
