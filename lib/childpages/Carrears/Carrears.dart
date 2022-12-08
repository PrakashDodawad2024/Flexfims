import 'dart:io';

import 'package:flexfilms/childpages/Carrears/formCarrears.dart';
import 'package:flexfilms/childpages/Carrears/recapcha.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import '../HomePage/DownGlobalPresence.dart';
import '../HomePage/DownProducts.dart';
import '../HomePage/DownSiteMap.dart';
import '../HomePage/HomeContactUs.dart';
import '../HomePage/LogOut.dart';
import 'package:file_picker/file_picker.dart';

class Carrears extends StatefulWidget {
  const Carrears({super.key});

  @override
  State<Carrears> createState() => _CarrearsState();
}

class _CarrearsState extends State<Carrears> {
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'Flex Films - All Locations',
    },
    {
      'value': 'Flex Films - India',
    },
    {
      'value': 'Flex Films - USA',
    },
    {
      'value': 'Flex Films - Mexico',
    },
    {
      'value': 'Flex Films - Egypt',
    },
    {
      'value': 'Flex Films - Poland',
    },
    {
      'value': 'Flex Films - Russia',
    },
    {
      'value': 'Flex Films - Hungary',
    },
    {
      'value': 'Flex Films - Nigeria',
    },
  ];
  final List<Map<String, dynamic>> _items1 = [
    {
      'value': 'Select',
    },
    {
      'value': 'Flex Films - India',
    },
    {
      'value': 'Flex Films - USA',
    },
    {
      'value': 'Flex Films - Mexico',
    },
    {
      'value': 'Flex Films - Egypt',
    },
    {
      'value': 'Flex Films - Poland',
    },
    {
      'value': 'Flex Films - Russia',
    },
    {
      'value': 'Flex Films - Hungary',
    },
    {
      'value': 'Flex Films - Nigeria',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 1.0,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              image: DecorationImage(
                image: AssetImage('assets/carrears/career-header-bg.jpg'),
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
                    "Careers",
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
                                  text: ' > Careers',
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
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Container(
                child: Wrap(
              children: [
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Careers ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.blue)),
                      TextSpan(
                          text: ' @ Flex Films',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.blue)),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.4,
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
                          'assets/carrears/mr-Chandan-chattaraj.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.red,
                              height: 60,
                              width: 5,
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: 300,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text.rich(
                                    TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Mr. Chandan Chattaraj',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(
                                            text:
                                                '                                           President - Human Resources (India & Global)',
                                            style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                  ),
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
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Text(
                      '\"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 52,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 5, 10),
                    child: Center(
                      child: Text(
                        'Let\'s Grow Together!!!',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Growing together is a wonderful thing! Our people are our most cherished asset who have driven us to become one of the most preferred suppliers of polymeric films across the world. We are forever on a lookout for people for whom innovation is a way of life! For those who are ready to learn the new and willing to unlearn the obsolete! For those who have the passion to stretch their limits and walk that extra mile to be discernibly better than yesterday!",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            )),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                'If you have that passion in you, we will be glad to have you in our Team!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                '\"',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 52,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                child: Text(
                  'Connect with Us',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Center(
                  child: Icon(
                Icons.keyboard_arrow_down,
                size: 35,
              )),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                'Current Opportunities',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.location_on_rounded),
                          ),
                          Center(
                            child: SizedBox(
                              width: 300,
                              child: Text(
                                '(Opportunities Location)',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //TextField(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: SelectFormField(
                      type: SelectFormFieldType.dropdown, // or can be dialog
                      initialValue: 'Flex Films - All Locations',
                      textAlign: TextAlign.start,
                      items: _items,
                      onChanged: (val) => print(val),
                      onSaved: (val) => print(val),
                    ),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                'Build a Career with Us',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                'Flex Films is scouting for talent that will take the company to the next level. Come, be a part of our growth story!!!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 40,
                        width: 4,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 350,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'You may write to us at:',
                                      style: TextStyle(
                                        fontSize: 15,
                                      )),
                                  TextSpan(
                                      text:
                                          '                                           enquiry@flexfilm.com,resumes.usa@flexfilm.com',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.blue)),
                                ],
                              ),
                            ),
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Text(
                'Mandatory Fields are Marked with an Asterisk (*)',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          //  formCarrear(),
          // CompleteForm(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'job Location *',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'Select', textAlign: TextAlign.justify,
                items: _items1,
                onChanged: (val) => print(val),
                onSaved: (val) => print(val),
              ),
              decoration: BoxDecoration(border: Border.all(width: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Name *',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Email Address *',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                  250 ~/ 1,
                  (index) => Expanded(
                        child: Container(
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Country Code *',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'Select Country code',
                textAlign: TextAlign.justify,
                items: _items1,
                onChanged: (val) => print(val),
                onSaved: (val) => print(val),
              ),
              decoration: BoxDecoration(border: Border.all(width: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Contact No *',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Text(
            '(For Desk Phone Enter Local Code + Number)',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                250 ~/ 1,
                (index) => Expanded(
                  child: Container(
                    color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                    height: 2,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Resume Attachment *',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(3),
                child: Row(
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () async {
                          FilePickerResult? result =
                              await FilePicker.platform.pickFiles();

                          if (result != null) {
                            File file = File("${result.files.single.path}");
                          } else {
                            // User canceled the picker
                          }
                        },
                        child: Text('Choose File'),
                        style: ElevatedButton.styleFrom(elevation: 0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('No file chosen'),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: List.generate(
                250 ~/ 1,
                (index) => Expanded(
                  child: Container(
                    color: index % 2 == 0 ? Colors.transparent : Colors.grey,
                    height: 2,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Covering Note',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 170,
                width: 390,
                child: Scaffold(
                  body: WebViewPlus(
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (controller) {
                      controller.loadUrl("assets/webpages/index.html");
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 185,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {},
                  child: const Text(
                    'Submit Your Application',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
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
    );
  }
}
