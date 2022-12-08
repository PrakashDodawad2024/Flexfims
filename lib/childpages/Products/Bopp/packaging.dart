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
  'text': '1. Heat Sealable Films',
};

class _PackagingState extends State<Packaging> {
  String selected = '';
  final List<Map<String, dynamic>> bopetList = [
    {
      'text': '  1. Heat Sealable Films',
      'image': 'assets/products/boppfilms/images/Heat_Sealable_film.jpg',
      'text1': 'Standard Heat Sealable Film with Low COF',
      'text2': '  B-TSL',
      'text3': '15-50 μm',
      'text4':
          'B-TSL is a both side heat sealable & one side treated film with standard SIT and low friction.',
      'text5': ' Low COF (0.22 ± 0.03) & Standard SIT (< 105°c)',
      'text6':
          ' Bakery (biscuits, cookies & crackers), Snacks, Confectionaries & Biscuit Bundle Wrap',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  2. Non Sealable Films',
      'image': 'assets/products/boppfilms/images/Non_Sealable_Film.jpg',
      'text1': 'Standard One Side Treated Non Sealable Film',
      'text2': 'B-TNP',
      'text3': '10-50 μm',
      'text4':
          'B-TNP is a co extruded non sealable film with one side corona treatment',
      'text5':
          ' Good Printability, Good gloss & clarity, Controlled slip & antistatic and Good dimensional stability',
      'text6': 'Bakery (biscuit, cookie,crackers), Snacks and Confectionary',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  3. Matte Films',
      'image': 'assets/products/boppfilms/images/Matte.jpg',
      'text1': 'Standard Matt Film for Wet Lamination & Conversion',
      'text2': 'B-MNT',
      'text3': '12-20 μm',
      'text4':
          ' B-MNT is a co extruded standard matt film having both side treatment',
      'text5':
          'Excellent matt dispersion, High haze (>70%), Low gloss (<10) and Good antistatic & slip',
      'text6':
          'Paper & board lamination(wet lamination), Bakery (biscuit, cookie,crackers), Snacks and Confectionary',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 4. Solid White Films',
      'image': 'assets/products/boppfilms/images/Solid_White_Film.jpg',
      'text1': 'Solid White Film',
      'text2': 'B-WHL',
      'text3': '15-40 μm',
      'text4':
          'B-WHL is a solid white film with both side standard heat sealability & one side treated',
      'text5':
          'Standard SIT(<105°C), Good opacity & gloss, Good whiteness and Good seal functionality',
      'text6':
          ' Bakery (biscuits, cookies & crackers), Chips & snacks, Confectionary and Biscuit bundle wrap',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': ' 5. White Voided Films',
      'image': 'assets/products/boppfilms/images/White_Voided_Film.jpg',
      'text1': 'Ultra Low SIT White Voided Sealable Film',
      'text2': 'B-PLS',
      'text3': '25-40 μ.',
      'text4':
          'B-PLS is a white voided film with one side heat sealable treated and other side ultra low SIT',
      'text5':
          ' Ultra low SIT (<75°C), Excellent opacity, High & broad hot tack and High yield',
      'text6':
          'Specially designed for high speed FFS, Snacks and confectionary and Biscuits, cookies and crackers',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '   6. I. Transparent Film',
      'image': 'assets/products/boppfilms/images/Antiskid_Transparent_Film.jpg',
      'text1': 'High COF Transparent Heat Sealable Film',
      'text2': 'B-THF',
      'text3': '17-25 μm',
      'text4':
          ' B-THF is heat sealable film having consistently high COF on sealing side and other side treated for good printability',
      'text5':
          'Consistently high COF(>0.50), Excellent printability, Good extrusion bond, Good dimensional stability and Good Optics',
      'text6': 'Pet foods & rice bags and Heavy duty bags',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  II. Matte Film',
      'image': 'assets/products/boppfilms/images/Antiskid_Matt_Film.jpg',
      'text1': 'Matt High COF Film',
      'text2': ' B-MHF',
      'text3': ' 18-20 μm',
      'text4':
          'B-MHF is a functionally modified matt film with consistently high COF on the matt side and other side glossy for good printability',
      'text5':
          'Consistent high COF (>0.50) matt surface, Excellent antiskid properties, Excellent matt dispersion, Good contact clarity, Enrich aesthetic and Good extrusion bond',
      'text6': ' Pet food, Rice bags, Big pouch and Heavy-duty bags',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  7. I. Transparent Film',
      'image': 'assets/products/boppfilms/images/demo-film.jpg',
      'text1': 'Transparent Cold Seal Release Film',
      'text2': 'B-TCR',
      'text3': '  12-25 μm',
      'text4':
          '  B-TCR is a functionally modified high gloss non sealable film with consistent slip for cold seal release application',
      'text5':
          ' Excellent cold seal release performance, Low & consistent COF, High gloss, Good printability and Good dimensional stability',
      'text6': ' Cold seal release film for chocolate & confectionary',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  II. Matte Film',
      'image': 'assets/products/boppfilms/images/Cold_Release_Matte_Film.jpg',
      'text1': ' Matt Cold Seal Release Film',
      'text2': 'B-MCR',
      'text3': '15-25 μm',
      'text4':
          ' B-MCR is a functionally modified matt film with consistent slip for cold seal release application',
      'text5':
          'Excellent cold seal release performance, Low & consistent COF, Excellent matt dispersion, High haze (>70%) & low gloss (>10), Good dimensional stability and Good contact clarity',
      'text6': ' Cold seal release film for chocolate & confectionary',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '   8. I. Transparent Film',
      'image':
          'assets/products/boppfilms/images/Direct_Extrusion_Coatable_Transparent_Film.jpg',
      'text1': 'Direct Extrusion Coatable Transparent Film',
      'text2': ' B-TEP',
      'text3': '12-15 μm',
      'text4':
          'B-TEP is a co-extruded both side treated film with one side non heat sealable & other side functionally modified for direct extrusion coating',
      'text5':
          'Direct extrusion coatable (without primer),Good extrusion bond, Good machinability, Good thermal stability and Good optics',
      'text6':
          'Base transperent film for EVA extrusion coating for thermal lamination',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  II. Matte Film',
      'image':
          'assets/products/boppfilms/images/Direct_Extrusion_Coatable_Matte_Film.jpg',
      'text1': 'Direct Extrusion Coating Matt Film',
      'text2': ' B-MET',
      'text3': '13-15 μm',
      'text4':
          'B-MET is a co-extruded both side treated film with one side standard matt other side functionally modified surface for direct extrusion coating (EVA)',
      'text5':
          'Direct extrusion coatable (without primer), Good extrusion bond, Good matt dispersion, High haze (>70%) & low gloss (<10)and Good thermal stability',
      'text6':
          'Base matt film for EVA extrusion coating for thermal lamination',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  9. I. Transparent',
      'image':
          'assets/products/boppfilms/images/Overwrap_Transparent_Films.jpg',
      'text1': 'Cigarette Over Wrap Heat Sealable Film',
      'text2': 'B-TCO',
      'text3': '18-20 μm',
      'text4':
          ' B-TCO is a functionally modified heat sealable with enhance seal performance untreated film for cigarette o/w',
      'text5':
          ' Low SIT (<95°C), Good stiffness, Controlled antistatic & slip and Good hot slip',
      'text6': 'Cigarette over wrap and Blade overwrap',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '   II. Antifog',
      'image': 'assets/products/boppfilms/images/Overwrap_Antifog_Films.jpg',
      'text1': 'Transparent Anti-fog Film',
      'text2': 'B-TAF',
      'text3': '20-40 μm',
      'text4':
          ' B-TAF is a novel designed anti-fog (both cold & hot) sealable treated layer one side and other side treated heat sealable',
      'text5':
          ' Good anti-fog functionality (both cold & hot), Antifog side SIT(<115°C), Good seal performance and Good machinability',
      'text6':
          'Hot & cold anti-fog application and Fresh food & vegetables packaging',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  III. Direct Embossible',
      'image': 'assets/products/boppfilms/images/Overwrap_Antifog_Films.jpg',
      'text1': 'Direct Soft Embossable Grade Film',
      'text2': 'B-TGT',
      'text3': '18-25 μm',
      'text4':
          'B-TGT is a coextruded one side functionally modified layer for direct soft embossing other side treated',
      'text5':
          'Direct embossable without primer, Good & long lasting embossing impression, Good optics and Good release',
      'text6':
          'Soft embossing holographic film for paper board lamination, decorative & textile bags',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  IV. Matte Film',
      'image':
          'assets/products/boppfilms/images/Overwrap_Direct_SIAdhesion_Films.jpg',
      'text1': 'Superior Ink Adhesion Both Side Treated Film',
      'text2': 'B-TMT',
      'text3': '15-20 μm',
      'text4':
          ' B-TMT is a coextruded functionally modified one side for better ink anchorage and other side also treated',
      'text5':
          '  Good Ink adhesion on modified layer, Good printability, Good optics and Good extrusion bond',
      'text6':
          ' Printable film for extrusion lamination for condiments and Packaging, bakery, biscuits, cookie, crackers)',
      'pdf': 'assets/globalpresence/usa/pdf/FFUSA_2022_SCS-RC-05765.pdf',
      'isexpanded': false
    },
    {
      'text': '  10. Transparent High Barrier Film',
      'image': 'assets/products/boppfilms/images/Transparent_HBarrier_Film.jpg',
      'text1': ' Outstanding Oxygen Barrier Transparent BOPP Film',
      'text2': 'B-TGM',
      'text3': ' 19 - 21 μm',
      'text4':
          ' B-TGM is a transparent coated BOPP film. It is one side high barrier coating with outstanding oxygen & good moisture barrier properties and other side low heat sealable untreated film.',
      'text5':
          'Low SIT (<95°C) ,Excellent oxygen and aroma barrier , Good moisture barrier.',
      'text6':
          ' Dry fruits and Nuts, Crisps & snacks packaging , Crackers packaging.',
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
