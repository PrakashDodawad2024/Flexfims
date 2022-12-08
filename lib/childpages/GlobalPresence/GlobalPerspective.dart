import 'package:flexfilms/childpages/GlobalPresence/MarketPresence/MiddleEast.dart';
import 'package:flexfilms/childpages/GlobalPresence/MarketPresence/africa.dart';
import 'package:flexfilms/childpages/GlobalPresence/MarketPresence/europe.dart';
import 'package:flexfilms/childpages/GlobalPresence/MarketPresence/northAmerica.dart';
import 'package:flexfilms/childpages/GlobalPresence/MarketPresence/sea.dart';
import 'package:flexfilms/childpages/GlobalPresence/MarketPresence/southAmerica.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../LandingPages/AllData.dart';

class globalPerspective extends StatefulWidget {
  const globalPerspective({super.key});

  @override
  State<globalPerspective> createState() => _globalPerspectiveState();
}

class _globalPerspectiveState extends State<globalPerspective> {
  Map<String, bool> highlight = {
    "Sea": true,
    "Europe": false,
    "NorthAmerica": false,
    "SouthAmerica": false,
    "Africa": false,
    "MiddleEast": false,
  };

  List<Widget> MarketList = <Widget>[
    Sea(),
    Europe(),
    NorthAmerica(),
    SouthAmerica(),
    Africa(),
    MiddleEast(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialconditions();
  }

  initialconditions() {
    switch (Alldata.Marketindex) {
      case 0:
        setState(() {
          highlight['Sea'] = true;
          highlight['Europe'] = false;
          highlight['NorthAmerica'] = false;
          highlight['SouthAmerica'] = false;
          highlight['Africa'] = false;
          highlight['MiddleEast'] = false;
        });
        break;
      case 1:
        setState(() {
          highlight['Sea'] = false;
          highlight['Europe'] = true;
          highlight['NorthAmerica'] = false;
          highlight['Sustainable'] = false;
          highlight['Africa'] = false;
          highlight['MiddleEast'] = false;
        });
        break;
      case 2:
        setState(() {
          highlight['Sea'] = false;
          highlight['Europe'] = false;
          highlight['NorthAmerica'] = true;
          highlight['SouthAmerica'] = false;
          highlight['Africa'] = false;
          highlight['MiddleEast'] = false;
        });
        break;
      case 3:
        setState(() {
          highlight['Sea'] = false;
          highlight['Europe'] = false;
          highlight['NorthAmerica'] = false;
          highlight['SouthAmerica'] = true;
          highlight['Africa'] = false;
          highlight['MiddleEast'] = false;
        });
        break;
      case 4:
        setState(() {
          highlight['Sea'] = false;
          highlight['Europe'] = false;
          highlight['NorthAmerica'] = false;
          highlight['SouthAmerica'] = false;
          highlight['Africa'] = true;
          highlight['MiddleEast'] = false;
        });
        break;
      case 5:
        setState(() {
          highlight['Sea'] = false;
          highlight['Europe'] = false;
          highlight['NorthAmerica'] = false;
          highlight['SouthAmerica'] = false;
          highlight['Africa'] = false;
          highlight['MiddleEast'] = true;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Global ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'Perspective ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 0),
              child: Center(
                child: Text(
                  'Welcome to Flex Films, one of the leading manufacturers of high quality polymeric films in the world!',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                  'With flexible packaging as its focal point, Flex Films manufactures Biaxially Oriented Polyester (BOPET) Films, Biaxially Oriented Polypropylene (BOPP) Films, Cast Polypropylene(CPP) Films. These are supplied as plain, coated or high-barrier metallised films with or without special surface treatment, customized for clients requirements.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
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
                        height: 70,
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
                                      'Flex Films is the film manufacturing arm of UFlex Limited - India\'s largest multinational flexible packaging materials and solutions company.',
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
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.3,
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
                    'assets/globalpresence/globalperspective/location-banner2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Text(
                  'With annual revenue of over USD 1 billion, UFlex is a fully vertically integrated conglomerate in the flexible packaging arena. It’s products include PET resin, plain, coated and metallised films, flexible laminates, pouches/bags, tubes, anti-counterfeiting / brand protection solutions, packaging & converting machines, inks & adhesives, polyols and coatings, rotogravure cylinders and flexographic plates. UFlex has grown from strength to strength with large manufacturing capacities of packaging film and other packaging products providing end-to-end solutions to clients across over 150 countries where it enjoys a formidable market presence. UFlex enjoys a global reach with unhindered speed making it truly multinational. Headquartered in Noida (National Capital Region, New Delhi) it has state-of the-art manufacturing facilities in India, UAE, Mexico, Poland, Egypt, USA, Russia, Hungary & Nigeria. The company acts as one-stop-shop flexible packaging solution provider serving varied sectors spanning USA, Canada, South America, UK, Europe, Russia, CIS countries, South Africa and other African countries, Middle East and the South Asian Countries.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
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
                        height: 160,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 362,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'Flex Films has an extensive global manufacturing and marketing footprint. It operates state-of-the art manufacturing facilities in India, UAE, Mexico, Egypt, Poland, USA, Russia, Hungary and Nigeria. Flex Films is world’s only film manufacturer to have plants operating in the four major continents of North America, Europe, Asia and Africa that together account for over 90% of the global Packaging requirements.',
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
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text(
                  'Innovation to create value added differentiation is our USP and with the most contemporary technology and some of the best brains by our side we have earned an irreproachable reputation. Having manufacturing facilities at strategic nodes across the globe we are capable of processing any quantum of order and ensuring just-in-time deliveries anywhere.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
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
                        height: 110,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 362,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'With a global capacity of 5,10,000 MT per annum for all types of films, Flex Films is one of the largest suppliers of thin Polyester (BOPET) Films for Packaging applications in the world. It has one more packaging films plants coming up in Dharwad, South India.',
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
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.3,
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
                    'assets/globalpresence/globalperspective/global-presence.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text(
                  'Flex Films is a winner of many international awards like AIMCAL, WPO, FPA for their cutting edge innovation, technology and products excellence especially for sustainable films.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                Alldata.Marketindex = 0;
                highlight['Sea'] = true;
                highlight['Europe'] = false;
                highlight['NorthAmerica'] = false;
                highlight['SouthAmerica'] = false;
                highlight['Africa'] = false;
                highlight['MiddleEast'] = false;
              });
            },
            child: Column(
              children: [
                SizedBox(
                  width: 450,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: highlight['Sea'] == true
                              ? Colors.blue
                              : Colors.grey,
                          height: 25,
                          width: 3,
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 360,
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.public,
                                    size: 20,
                                    color: highlight['Sea'] == true
                                        ? Colors.red
                                        : Colors.blue,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' SOUTH EAST ASIA & FAR EAST',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: highlight['Sea'] == true
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                            color: highlight['Sea'] == true
                                                ? Colors.red
                                                : Colors.blue,
                                          )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(60, 8, 8, 8),
                                  child: Icon(
                                    Icons.arrow_right_outlined,
                                    size: 25.0,
                                    color: highlight['Sea'] == true
                                        ? Colors.red
                                        : Colors.blue,
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
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.Marketindex = 1;
                      highlight['Sea'] = false;
                      highlight['Europe'] = true;
                      highlight['NorthAmerica'] = false;
                      highlight['SouthAmerica'] = false;
                      highlight['Africa'] = false;
                      highlight['MiddleEast'] = false;
                    });
                  },
                  child: SizedBox(
                    width: 450,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: highlight['Europe'] == true
                                ? Colors.blue
                                : Colors.grey,
                            height: 25,
                            width: 3,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 360,
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.public,
                                      size: 20,
                                      color: highlight['Europe'] == true
                                          ? Colors.red
                                          : Colors.blue,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'EUROPE AND CIS',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight:
                                                  highlight['Europe'] == true
                                                      ? FontWeight.bold
                                                      : FontWeight.normal,
                                              color: highlight['Europe'] == true
                                                  ? Colors.red
                                                  : Colors.blue,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(158, 8, 8, 8),
                                    child: Icon(
                                      Icons.arrow_right_outlined,
                                      size: 25.0,
                                      color: highlight['Europe'] == true
                                          ? Colors.red
                                          : Colors.blue,
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
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.Marketindex = 2;
                      highlight['Sea'] = false;
                      highlight['Europe'] = false;
                      highlight['NorthAmerica'] = true;
                      highlight['SouthAmerica'] = false;
                      highlight['Africa'] = false;
                      highlight['MiddleEast'] = false;
                    });
                  },
                  child: SizedBox(
                    width: 450,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: highlight['NorthAmerica'] == true
                                ? Colors.blue
                                : Colors.grey,
                            height: 25,
                            width: 3,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 360,
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.public,
                                      size: 20,
                                      color: highlight['NorthAmerica'] == true
                                          ? Colors.red
                                          : Colors.blue,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'NORTH AMERICA',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight:
                                                  highlight['NorthAmerica'] ==
                                                          true
                                                      ? FontWeight.bold
                                                      : FontWeight.normal,
                                              color:
                                                  highlight['NorthAmerica'] ==
                                                          true
                                                      ? Colors.red
                                                      : Colors.blue,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(155, 8, 8, 8),
                                    child: Icon(
                                      Icons.arrow_right_outlined,
                                      size: 25.0,
                                      color: highlight['NorthAmerica'] == true
                                          ? Colors.red
                                          : Colors.blue,
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
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.Marketindex = 3;
                      highlight['Sea'] = false;
                      highlight['Europe'] = false;
                      highlight['NorthAmerica'] = false;
                      highlight['SouthAmerica'] = true;
                      highlight['Africa'] = false;
                      highlight['MiddleEast'] = false;
                    });
                  },
                  child: SizedBox(
                    width: 450,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: highlight['SouthAmerica'] == true
                                ? Colors.blue
                                : Colors.grey,
                            height: 25,
                            width: 3,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 360,
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.public,
                                      size: 20,
                                      color: highlight['SouthAmerica'] == true
                                          ? Colors.red
                                          : Colors.blue,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'SOUTH AMERICA',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight:
                                                  highlight['SouthAmerica'] ==
                                                          true
                                                      ? FontWeight.bold
                                                      : FontWeight.normal,
                                              color:
                                                  highlight['SouthAmerica'] ==
                                                          true
                                                      ? Colors.red
                                                      : Colors.blue,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(155, 8, 8, 8),
                                    child: Icon(
                                      Icons.arrow_right_outlined,
                                      size: 25.0,
                                      color: highlight['SouthAmerica'] == true
                                          ? Colors.red
                                          : Colors.blue,
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
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.Marketindex = 4;
                      highlight['Sea'] = false;
                      highlight['Europe'] = false;
                      highlight['NorthAmerica'] = false;
                      highlight['SouthAmerica'] = false;
                      highlight['Africa'] = true;
                      highlight['MiddleEast'] = false;
                    });
                  },
                  child: SizedBox(
                    width: 450,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: highlight['Africa'] == true
                                ? Colors.blue
                                : Colors.grey,
                            height: 25,
                            width: 3,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 360,
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.public,
                                      size: 20,
                                      color: highlight['Africa'] == true
                                          ? Colors.red
                                          : Colors.blue,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'AFRICA',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight:
                                                  highlight['Africa'] == true
                                                      ? FontWeight.bold
                                                      : FontWeight.normal,
                                              color: highlight['Africa'] == true
                                                  ? Colors.red
                                                  : Colors.blue,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(220, 8, 8, 8),
                                    child: Icon(
                                      Icons.arrow_right_outlined,
                                      size: 25.0,
                                      color: highlight['Africa'] == true
                                          ? Colors.red
                                          : Colors.blue,
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
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Alldata.Marketindex = 5;
                      highlight['Sea'] = false;
                      highlight['Europe'] = false;
                      highlight['NorthAmerica'] = false;
                      highlight['SouthAmerica'] = false;
                      highlight['Africa'] = false;
                      highlight['MiddleEast'] = true;
                    });
                  },
                  child: SizedBox(
                    width: 450,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: highlight['MiddleEast'] == true
                                ? Colors.blue
                                : Colors.grey,
                            height: 25,
                            width: 3,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 360,
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.public,
                                      size: 20,
                                      color: highlight['MiddleEast'] == true
                                          ? Colors.red
                                          : Colors.blue,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'MIDDLE EAST',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight:
                                                  highlight['MiddleEast'] ==
                                                          true
                                                      ? FontWeight.bold
                                                      : FontWeight.normal,
                                              color: highlight['MiddleEast'] ==
                                                      true
                                                  ? Colors.red
                                                  : Colors.blue,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(175, 8, 8, 8),
                                    child: Icon(
                                      Icons.arrow_right_outlined,
                                      size: 25.0,
                                      color: highlight['MiddleEast'] == true
                                          ? Colors.red
                                          : Colors.blue,
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
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 0),
              child: Center(
                child: Text(
                  'Our Global Market Presence',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            child: MarketList[Alldata.Marketindex],
          ),
        ],
      ),
    );
  }
}
