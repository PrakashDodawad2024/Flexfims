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
  'text': '1. Optically Clear Films',
};

class _IndustrialState extends State<Industrial> {
  String selected = '';
  final List<Map<String, dynamic>> bopetList = [
    {
      'text': ' 1. Optically Clear Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Optically_Clear_Films.jpg',
      'text1': ' F-CLR',
      'text2': ' 9 - 50 μm',
      'text3':
          ' This grade of films are low haze films with high clarity & transparency. They are available in corona treated or untreated form',
      'text4': ' Printing & Lamination, Metallization, Embossing, Holograms.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  2. Super Clear Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Super_Clear_Films.jpg',
      'text1': ' F-XLR',
      'text2': ' 12 - 50 μm',
      'text3':
          ' This grade of films are low haze films with highest clarity & transparency. They are available in corona treated or untreated form',
      'text4': ' Printing & Lamination, Metallization, Embossing, Holograms.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 3. Hot Stamping Base Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Hot_Stamping_Base_Films.jpg',
      'text1': ' F-HTF',
      'text2': ' 11 - 60 μm',
      'text3':
          ' This grade of film has excellent transparency & clarity. It has good thermal stability at elevated temperature (190°C)',
      'text4':
          ' This grade of film is ideal as a transfer foil to transfer the design either on paper, textiles or plastics.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 4. Base Films for Silicone Coating',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Base_Films_Silicone_Coating.jpg',
      'text1': ' F-SLC',
      'text2': ' 19 - 50 μm',
      'text3':
          ' This grade of film has high strength & durability, optical clarity and good thermal dimensional stability.',
      'text4': ' Silicon coating applications.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 5. Yarn Grade Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Yarn_Grade_Films.jpg',
      'text1': ' F-YRN',
      'text2': ' 12 - 50 μm',
      'text3':
          ' This grade of film is having Excellent clarity, transparency & thermal stability at elevated temperatures (190°C) makes this product ideal for metallic yarn processing. Because of excellent clarity & transparency, when this film is metallized & coated with colored laquer, it gives good luster to the end product.',
      'text4':
          'Metallic yarn (can be directly used for plain yarn) & also can be used as synthetic jari (yarn) after metallization & lacquering.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  6. Electrical Grade Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Electrical_Grade_Films.jpg',
      'text1': ' F-ELE',
      'text2': ' 8 - 50 μm',
      'text3':
          'This grade of film is having excellent dielectric properties such as high breakdown voltage, low dielectric Loss factor & high electrical resistivity.',
      'text4':
          ' This grade of film is used in electrical insulation such as motor winding, cable over wraps, leatheroid lamination, electrical insulation tape.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  7. Thermal Lamination Base Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Thermal_Lamination_Base_Films.jpg',
      'text1': ' F-LAM',
      'text2': ' 8 - 50 μm',
      'text3': '  It has balance shrinkage.',
      'text4':
          '  This grade of film is used for thermal lamination such as document lamination.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 8. UV Stabilized Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_UV_Stabilized_film.jpg',
      'text1': ' F-UVP',
      'text2': ' 12 - 50 μm',
      'text3':
          'F-UVP is a transparent UV stabilized BOPET film. The film is one side Corona Treated with one side Untreated or both sides Untreated.',
      'text4': 'UV protect flexible packaging.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  9. Direct Embossable Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Direct_Embossable_Films.jpg',
      'text1': ' F-EMB',
      'text2': ' 9 - 13 μm',
      'text3':
          ' F-EMB is a transparent BOPET film.This film is designed with a special surface suitable for direct embossing without any offline coating and providing deep & sharp impression. The film is available with untreated and corona treated on other side.',
      'text4': 'Holographic Packaging, gift-wrap, embossing & hologram.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 10. Super Matte Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_Super_Matte_Films.jpg',
      'text1': ' F-MSH',
      'text2': ' 12 - 33 μm',
      'text3':
          '  F-MSH is a super Matte BOPET film. It is one side corona treated or both side untreated.This grade of film contain a special additive to give super matt effect. This grade of film having high haze & low gloss as a special optical properties.',
      'text4':
          ' Board lamination, thermal lamination, label & conversion applications.',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 11. UV Stabilized PET Films',
      'image':
          'assets/products/bopetfilms/images/industry/IF_UV_Stabilized_PET_films.jpg',
      'text1': ' F-UVF',
      'text2': ' 15 - 36 μm',
      'text3':
          ' This grade of film is a co-extruded UV stabilized polyester film having one side heat sealable layer.',
      'text4': ' Film is suitable for FRP application.',
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
