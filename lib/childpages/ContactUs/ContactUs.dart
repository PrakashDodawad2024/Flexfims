import 'package:flexfilms/childpages/ContactUs/contactForm.dart';
import 'package:flexfilms/childpages/ContactUs/locations/egypt.dart';
import 'package:flexfilms/childpages/ContactUs/locations/hungary.dart';
import 'package:flexfilms/childpages/ContactUs/locations/india.dart';
import 'package:flexfilms/childpages/ContactUs/locations/mexico.dart';
import 'package:flexfilms/childpages/ContactUs/locations/nigeria.dart';
import 'package:flexfilms/childpages/ContactUs/locations/poland.dart';
import 'package:flexfilms/childpages/ContactUs/locations/russia.dart';
import 'package:flexfilms/childpages/ContactUs/locations/uae.dart';
import 'package:flexfilms/childpages/ContactUs/locations/usa.dart';
import 'package:flexfilms/childpages/GlobalPresence/map/contactUs.dart';
import 'package:flutter/material.dart';
import '../../LandingPages/AllData.dart';
import '../HomePage/DownGlobalPresence.dart';
import '../HomePage/DownProducts.dart';
import '../HomePage/DownSiteMap.dart';
import '../HomePage/HomeContactUs.dart';
import '../HomePage/LogOut.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Map<String, bool> highlight = {
    "contactindia": false,
    "contactuae": false,
    "contactmexico": false,
    "contactegypt": false,
    "contactpoland": false,
    "contactusa": false,
    "contactrussia": false,
    "contacthungary": false,
    "contactnigeria": false,
  };
  bool india = false;

  List<Widget> contactList = <Widget>[
    contactindia(),
    contactuae(),
    contactmexico(),
    contactegypt(),
    contactpoland(),
    contactusa(),
    contactrussia(),
    contacthungary(),
    contactnigeria(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // initialconditions();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.125,
                width: MediaQuery.of(context).size.width * 1.0,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/contactus/contact-header-bg.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.red),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      child: Text(
                        "Contact Us",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    const Divider(
                      height: 20,
                      thickness: 5,
                      indent: 10,
                      endIndent: 280,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Wrap(
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.home,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                      text: ' > Contact Us ',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.yellow)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              contactMap(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Contact Us ',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                          )),
                      TextSpan(
                          text: '@ Flex Films!',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Center(
                  child: Container(
                    child: Text(
                      'Our Locations',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 0;
                          highlight['contactindia'] = true;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_India.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Film Business-India',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              130, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactindia'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactindia'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactindia'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 1;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = true;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_UAE.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-UAE',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              160, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactuae'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactuae'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactuae'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 2;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = true;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_Mexico.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-Mexico',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              135, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactmexico'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactmexico'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactmexico'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 3;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = true;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_Egypt.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-Egypt',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              145, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactegypt'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactegypt'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactegypt'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 4;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = true;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_Poland.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-Poland',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              135, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactpoland'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactpoland'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactpoland'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 5;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = true;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_USA.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-USA',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              150, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactusa'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactusa'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactusa'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 6;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = true;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_Russia.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-Russia',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              135, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactrussia'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactrussia'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactrussia'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 7;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = true;
                          highlight['contactnigeria'] = false;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_Hungary.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-Hungary',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              125, 8, 8, 8),
                                          child: Icon(
                                            highlight['contacthungary'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contacthungary'] == true
                          ? Colors.blue
                          : Color.fromARGB(250, 210, 220, 232),
                    ),
                  ),
                  (highlight['contacthungary'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Alldata.contactpageIndex = 8;
                          highlight['contactindia'] = false;
                          highlight['contactuae'] = false;
                          highlight['contactmexico'] = false;
                          highlight['contactegypt'] = false;
                          highlight['contactpoland'] = false;
                          highlight['contactusa'] = false;
                          highlight['contactrussia'] = false;
                          highlight['contacthungary'] = false;
                          highlight['contactnigeria'] = true;
                        });
                      },
                      child: Container(
                        child: SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.blue,
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
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage: AssetImage(
                                                  'assets/contactus/Flag_of_Nigeria.jpg'),
                                            ),
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Flex Films-Nigeria',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              135, 8, 8, 8),
                                          child: Icon(
                                            highlight['contactnigeria'] == true
                                                ? Icons.arrow_drop_down
                                                : Icons.arrow_right_outlined,
                                            size: 25.0,
                                            color: Colors.black,
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
                    ),
                    decoration: BoxDecoration(
                      color: highlight['contactnigeria'] == true
                          ? Colors.blue
                          : Color.fromARGB(255, 214, 230, 242),
                    ),
                  ),
                  (highlight['contactnigeria'] == true)
                      ? Container(
                          child: contactList[Alldata.contactpageIndex],
                        )
                      : SizedBox(
                          height: 0,
                        ),
                  ContactForm(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Column(
                        children: [
                          DownSIteMap(),
                          DownProducts(),
                          DownGlobalPresence(),
                          HomeContactUs(),
                          LogOut(),
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
    );
  }
}
