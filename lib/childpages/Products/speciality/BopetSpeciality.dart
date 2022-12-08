import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BopetSpeciality extends StatefulWidget {
  @override
  State<BopetSpeciality> createState() => _BopetSpecialityState();
}

Map<String, String> bopet = {
  'text': ' 1. Metallized Polyester Films',
};

class _BopetSpecialityState extends State<BopetSpeciality> {
  String selected = '';
  final List<Map<String, dynamic>> bopetList = [
    {
      'text': ' 1. Easy Tearing Films',
      'image': 'assets/products/speciality/bopet/SF_Easy_Tearing_Films.jpg',
      'text1': 'F-ETF',
      'text2': '12 - 23 μm',
      'text3':
          'The film has one side Untreated with the other side being Corona Treated or both sides Untreated.',
      'text4': 'Printing, Lamination, Bags & Pouches.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '2. Antimony Free Films',
      'image': 'assets/products/speciality/bopet/SF_Antimony_Free_Films.jpg',
      'text1': 'F-PAF',
      'text2': ' 12 - 36 μm',
      'text3':
          'The film is either both sides Untreated or has one side Untreated with the other side being Corona Treated.',
      'text4': 'Flexible packaging, Solvent & Water base coating.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 3. Soft Touch Coated Films',
      'image':
          'assets/products/speciality/bopet/SF_Soft_Touch_Coated_Films.jpg',
      'text1': 'F-STF',
      'text2': ' 14 - 25 μm',
      'text3':
          'F-STF film has an engineered-micro surface texture giving a unique and luxurious feel. Suitable as a outer web in many packaging laminations, F-STF film gives brand owners a new capability in the production of consumer centric packaging. The backside of F-STF is easily printable with traditional converter inks or new digital print technologies.',
      'text4':
          'Label, Graphic Advertising Banners, Decorative Packaging and High End Stationery Products.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 4. Mining Bolt Application Films',
      'image':
          'assets/products/speciality/bopet/SF_Mining_Bolt_Application_Films.jpg',
      'text1': 'F-PUX',
      'text2': ' 36 - 50 μm',
      'text3':
          ' F-PAM is a transparent polyester film, Both sides of the film are Untreated.',
      'text4': 'Mining, Flexible packaging & Solvent & Water base coating.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '5. Nylon Replacement Films',
      'image':
          'assets/products/speciality/bopet/SF_Nylon_Replacement_Films.jpg',
      'text1': 'F-HPF',
      'text2': ' 15 - 50 μm',
      'text3':
          'The film is high puncture resistance & specially developed for Nylon replacement. The film is either both sides Untreated or one side Untreated with other side Corona Treated.',
      'text4':
          'This grade of film is used for nylon replacement application. The film is withstands aggressive handling.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 6. Inline Primed Films Digital Printing',
      'image':
          'assets/products/speciality/bopet/SF_Inline_Primed_Films_Digital_Printing.jpg',
      'text1': 'F-PDP',
      'text2': ' 12 - 50 μm',
      'text3':
          'This film is designed with a special surface suitable for direct digital printing without any offline coating.',
      'text4':
          'Film is designed for direct Digital printing with HP Indigo press.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '7. Anti static Coated Twist Grade Films',
      'image':
          'assets/products/speciality/bopet/SF_Antistatic_Coated_Twist_Grade_Polyester_Film.jpg',
      'text1': 'F-TST-AS',
      'text2': ' 18 - 30 μm',
      'text3':
          'This grade of polyester film is specially designed for Twist wrap application .This film is available in one side antistatic chemical coated and other side plain (UT) or Corona Treated ( CT). The non coated side is available in plain ( F-TST-ASU) and corona version ( F-TST-ASC).',
      'text4':
          'The film is used of Twist wrap & Candy application for cold and hot twist.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 8. Reduce Carbon footpring Films',
      'image':
          'assets/products/speciality/bopet/SF_Reduce_Carbon_Footpring_Films.jpg',
      'text1': 'F-PAP_BD',
      'text2': '12 - 23 μm',
      'text3':
          'F-PAP_BD is a transparent BOPET film. The film is one side Corona Treated with one side Untreated or both sides Untreated.',
      'text4':
          ' Flexible packaging, Solvent & Water based coatings Reduced carbon footprint when compared to standard BOPET.',
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
