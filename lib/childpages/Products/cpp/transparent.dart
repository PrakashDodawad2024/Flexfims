import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Transparent extends StatefulWidget {
  @override
  State<Transparent> createState() => _TransparentState();
}

Map<String, String> bopet = {
  'text': '1. Standard One Side Treated Film',
};

class _TransparentState extends State<Transparent> {
  String selected = '';
  final List<Map<String, dynamic>> bopetList = [
    {
      'text': ' 1. Standard One Side Treated Film',
      'image':
          'assets/products/cppfilms/images/TF_Standard_1Side_Treated_Sealable_film.jpg',
      'text2': 'C-CPL',
      'text3': ' 15-80 μm',
      'text4':
          'C-CPL is a Co-Extruded transparent film with one side corona treated and other side sealable.',
      'text5':
          ' Good optics, Consistent slip, Good machinability, Good hot tack and Good seal integrity.',
      'text6': 'Lamination application and Pasta Packaging.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 2. Twist Grade Film',
      'image': 'assets/products/cppfilms/images/TF_Twist_Grade_Film.jpg',
      'text2': 'C-CPT',
      'text3': ' 23 - 35 μm',
      'text4':
          'C-CPT is a Co-Extruded modified transparent film one side treatment for twist application.',
      'text5':
          'Excellent gloss & stiffness and Excellent twistability and Superior printability.',
      'text6': 'Twist wrap, Candy wrap and Confectionery conversion.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 3. Antifog Film',
      'image': 'assets/products/cppfilms/images/TF_Antifog_film.jpg',
      'text2': ' C-CPA',
      'text3': ' 40 - 50 μm',
      'text4':
          'C-CPA is a novel designed anti-fog (both cold & hot) sealable treated layer one side and other side treated heat sealable.',
      'text5':
          'Excellent hot tack & sealing properties, Consistent slip properties provide good machinability, Excellent gloss & stiffness, Excellent humidity resistance in the antifog side, Good antifog properties and Good seal integrity.',
      'text6': ' Fresh vegetables and Fruits, salad & meat packaging.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 4. Retort Grade Film',
      'image': 'assets/products/cppfilms/images/TF_Retort_Grade_Film.jpg',
      'text2': 'C-CPR',
      'text3': ' 50 - 75 μm',
      'text4':
          'C-CPR is a Co-Extruded transparent CPP Film one side treated for aseptic/retort packaging.',
      'text5':
          'Excellent sterilization performance, Excellent lamination adhesive anchorage and High Seal strength.',
      'text6':
          'Sterilization & Pasteurization, Hot filling and Ready to eat food.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 5. Deep Freeze Film',
      'image': 'assets/products/cppfilms/images/TF_Deep_Freeze_Film.jpg',
      'text2': 'C-CDF',
      'text3': ' 25 - 40 μm',
      'text4':
          'C-CDF is a Co-Extruded modified transparent film One side Corona treated and both side sealable for deep freeze application.',
      'text5':
          'Good optical properties, Low slip for high speed packaging, Excellent deep freeze properties and Excellent drop impact strength.',
      'text6':
          'Deep Freeze application, Bread packaging, Ice cream and Frozen foods & Bakery.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  6. Both Side Heat Sealable Film',
      'image': 'assets/products/cppfilms/images/TF_Both_Side_HS_Film.jpg',
      'text2': 'C-CBP',
      'text3': ' 20 - 40 μm',
      'text4':
          'C-CBP is a Co-Extruded CPP film which is one side Corona treated and both side heat sealable.',
      'text5':
          ' Good Optical properties, Low slip for high speed packaging, Excellent machinability and Excellent hot tack.',
      'text6':
          'Lamination & single ply application, Printing (Flexo,Rotogravure), Direct food packaging (Pasta,Bakery,Dried beans etc.) and Jumbo packs (Snack food,Diapers).',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 7. Robust Seal Performance Film',
      'image':
          'assets/products/cppfilms/images/TF_Robust_Seal_Performance_Film.jpg',
      'text2': 'C-CHL',
      'text3': ' 20 - 25 μm',
      'text4':
          'C-CHL is a Coextruded transparent CPP film with one side treated & otherside engineered to have low SIT broad sealing range & high hot tack strength.',
      'text5':
          'Low SIT & broad sealing range, High & Broad hot tack, Excellent hermeticity and Excellent runnability on high speed.',
      'text6':
          'Condiment packaging and High speed FFS machines with excellent seal performance.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  8. High Heat Resistance Film',
      'image':
          'assets/products/cppfilms/images/TF_High_Heat_Resistance_Film.jpg',
      'text2': 'C-CKP',
      'text3': '40 μm',
      'text4':
          ' C-CKP is a specially designed Coextruded plain CPP film with high gloss, good printability & high heat resistance on untreated side.',
      'text5':
          'Good optics, Good printability, High heat Resistance and Good machinability.',
      'text6': ' Confectionery Packaging.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  9. Ultra Low SIT Film',
      'image': 'assets/products/cppfilms/images/TF_Ultra_Low_SIT_Film.jpg',
      'text2': 'C-CLL',
      'text3': ' 15 - 50 μm',
      'text4':
          'C-CLL is a Coextruded transparent CPP film with one side treated & otherside engineered to have ultra low SIT broad sealing range & high hot tack strength.',
      'text5':
          ' Ultra Low SIT & Broad sealing range, High & Broad hot tack, Excellent hermeticity and Excellent runnability on high speed.',
      'text6':
          'Snacks & Confectionery packaging and High speed FFS machines with excellent seal performance.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 10. Metallizable Grade Film',
      'image': 'assets/products/cppfilms/images/TF_Metallizable_Grade_Film.jpg',
      'text2': 'C-CPM',
      'text3': ' 20 - 50 μm',
      'text4':
          'C-CPM is a Co-Extruded transparent metallizable base film with one side treatment and other side heat sealable.',
      'text5':
          ' Excellent machinability, Excellent sealing strength and uperior metal anchorage',
      'text6': 'Base film metallization and Printable after metallization.',
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
