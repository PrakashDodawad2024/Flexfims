import 'package:flexfilms/childpages/Aboutus/OurPolicy/sustainability/Asclepius.dart';
import 'package:flexfilms/childpages/Aboutus/OurPolicy/sustainability/Greenpet.dart';
import 'package:flexfilms/childpages/Aboutus/OurPolicy/sustainability/rPet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../LandingPages/AllData.dart';

class Sustainability extends StatefulWidget {
  const Sustainability({super.key});

  @override
  State<Sustainability> createState() => _SustainabilityState();
}

class _SustainabilityState extends State<Sustainability> {
  Map<String, bool> highlight = {
    "Asclepius": true,
    "GreenPet": false,
    "Rpet": false,
  };

  List<Widget> sustainabilityList = <Widget>[
    Asclepius(),
    GreenPet(),
    Rpet(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.sustainabilityindex) {
      case 0:
        setState(() {
          highlight['Asclepius'] = true;
          highlight['GreenPet'] = false;
          highlight['Rpet'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Asclepius'] = false;
          highlight['GreenPet'] = true;
          highlight['Rpet'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Asclepius'] = false;
          highlight['GreenPet'] = false;
          highlight['Rpet'] = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Center(
                child: Text(
                  'SUSTAINABILITY',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 22),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 80,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'Being the Global Film Manufacturing Arm of India’s largest multinational flexible packaging materials and Solution Company, we at Flex Films remain committed towards sustainability:',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                'Reduction at source and Down-gauging is a cult at Uflex. We consciously make conscious and sustained R&D efforts to down-gauge the polymeric substrates that lead to light-weighting of laminates. We have successfully developed plain/heat sealable BOPP films as thin as 8 micron; BOPET films with 6.5 micron thickness and heat sealable 12 micron metallized BOPP films that are suitable for printing and lamination. These films possess comparable machinability parameters to conventionally thicker films and provide significant source reduction ranging from 33% to 47%. These films have much lower carbon foot-print than the films they replace.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 80,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'We have recently engineered 9.5 micron PET ALOx transparent film which is the thinnest coated film ever and has enhanced barrier properties with WVTR and OTR both significantly less than 1.',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                'FlexfreshTM film that we have developed for keeping freshness of fresh produce intact is a biodegradable (by composting) film working on Active Modified Atmospheric Packaging technology. Upholding our commitment towards circular economy, we have developed a technology for reprocessing the waste arising out of production of various flexible packaging products. This helps in reduction of material waste at the landfills underscoring the importance that we ascribe to environment and sustainability.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Center(
                child: Text(
                  'These are just some of the very many ways in which we support environmental sustainability!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 1.0,
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/aboutUs/ourpolicy/sustainability-banner.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                'At Flex Films innovation and sustainability go hand in hand keeping the ‘GREEN’ Promise by Optimizing the use of renewable resources; Maximizing post-consumer recyclate; Reducing production waste; Reprocessing production waste; Using non-recyclable waste to produce energy and optimizing energy consumption.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Center(
                child: Text(
                  'DELIVERING THE ‘GREEN’ PROMISE INFALLIBLY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 80,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'Eco-Friendly Polyester films GREEN PET and POST CONSUMER WASTE RECYCLED PET FILM - rPET by Flex Films echo the company\'s \"GREEN\" promise.',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.sustainabilityindex = 0;
                      highlight['Asclepius'] = true;
                      highlight['GreenPet'] = false;
                      highlight['Rpet'] = false;
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.3,
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(blurRadius: 2.0, offset: Offset(0, 2))
                              ],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/aboutUs/ourpolicy/sustainability/Asclepius.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Asclepius ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: highlight['Asclepius'] == true
                                ? Colors.blue
                                : Colors.grey,
                            height: 3,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.sustainabilityindex = 1;
                          highlight['Asclepius'] = false;
                          highlight['GreenPet'] = true;
                          highlight['Rpet'] = false;
                        });
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.3,
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2.0, offset: Offset(0, 2))
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/aboutUs/ourpolicy/sustainability/greenpet.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Green Pet ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: highlight['GreenPet'] == true
                                  ? Colors.blue
                                  : Colors.grey,
                              height: 3,
                              width: 150,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 115),
            child: InkWell(
              onTap: () {
                setState(() {
                  Alldata.sustainabilityindex = 2;
                  highlight['Asclepius'] = false;
                  highlight['GreenPet'] = false;
                  highlight['Rpet'] = true;
                });
              },
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.3,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(blurRadius: 2.0, offset: Offset(0, 2))
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/aboutUs/ourpolicy/sustainability/rpet.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Rpet',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: highlight['Rpet'] == true
                            ? Colors.blue
                            : Colors.grey,
                        height: 3,
                        width: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: sustainabilityList[Alldata.sustainabilityindex],
          ),
        ],
      ),
    );
  }
}
