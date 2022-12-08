import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'Flex Films - Product Information ',
    },
    {
      'value': 'Flex Films - Sample Request',
    },
    {
      'value': 'Flex Films - Services',
    },
    {
      'value': 'Flex Films - Other Questions',
    },
    {
      'value': 'Flex Films - Comments/queries/Feedback',
    },
    {
      'value': 'Flex Films - Suppliers & Partners ',
    },
    {
      'value': 'Flex Films - Media Inquiries',
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
  final List<Map<String, dynamic>> _items2 = [
    {
      'value': 'Select',
    },
    {
      'value': 'BOPET Films',
    },
    {
      'value': 'BOPP Films',
    },
    {
      'value': 'CPP Films',
    },
    {
      'value': 'Metalized Films',
    },
    {
      'value': 'Alox Coated Films',
    },
    {
      'value': 'Speciality Films',
    },
    {
      'value': 'PCR Grade Films',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'Get in Touch',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SizedBox(
                child: Text(
                    'Flex Films is the global film manufacturing arm of India’s largest multinational flexible packaging solutions company and global polymer science player, UFlex Limited. With state-of-the-art packaging film manufacturing facilities in all the major continents in the world i.e., Asia, Europe, North America and Africa, our cumulative production capacity stands in excess of 5,10,000 MT per annum.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify),
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
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'Thank you so much for your interest! Please fill up the enquiry form below. This will help us assist you better.',
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
          Center(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(right: 50, bottom: 10),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'You may write to us at:',
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      TextSpan(
                          text: 'enquiry@flexfilm.com',
                          style: TextStyle(fontSize: 15, color: Colors.blue)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, bottom: 15),
            child: Container(
              child: Text(
                'Mandatory Fields are Marked with an Asterisk (*)',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.red, fontSize: 14),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Area of Intrest *',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'Select', textAlign: TextAlign.center,
                items: _items1,
                onChanged: (val) => print(val),
                onSaved: (val) => print(val),
              ),
              decoration: BoxDecoration(border: Border.all(width: 1)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Geographical Coordinates',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'Select', textAlign: TextAlign.center,
                items: _items1,
                onChanged: (val) => print(val),
                onSaved: (val) => print(val),
              ),
              decoration: BoxDecoration(border: Border.all(width: 1)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Product you are looking for',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SelectFormField(
                type: SelectFormFieldType.dropdown, // or can be dialog
                initialValue: 'Select', textAlign: TextAlign.center,
                items: _items2,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Name *',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Email Address *',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Country Code *',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contact No *',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
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
                          color:
                              index % 2 == 0 ? Colors.transparent : Colors.grey,
                          height: 2,
                        ),
                      )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Mesaage',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: <Widget>[
          //     Container(
          //       height: 170,
          //       width: 380,
          //       child: Scaffold(
          //         body: WebViewPlus(
          //           javascriptMode: JavascriptMode.unrestricted,
          //           onWebViewCreated: (controller) {
          //             controller.loadUrl("assets/webpages/second.html");
          //           },
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 185,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: () {},
                    child: const Text(
                      'Submit Your Query',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
