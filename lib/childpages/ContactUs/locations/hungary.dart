import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class contacthungary extends StatefulWidget {
  const contacthungary({super.key});

  @override
  State<contacthungary> createState() => _contacthungaryState();
}

class _contacthungaryState extends State<contacthungary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Flex Films EUROPA KORLATOLT FELEOSSEGU TARSASAG',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The Office',
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
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
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.map_outlined,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Address:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: '2651 Rétság, Ipari Park-7, Hungary',
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
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.phone,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Phone:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              TextSpan(
                                  text: '+36 21 3000113',
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
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.email,
                                  size: 25,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 342,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () async {
                            String email =
                                Uri.encodeComponent(" enquiry@flexfilm.com");
                            String subject = Uri.encodeComponent("");
                            String body = Uri.encodeComponent("");
                            print(subject); //output: Hello%20Flutter
                            Uri mail = Uri.parse(
                                "mailto:$email?subject=$subject&body=$body");
                            if (await launchUrl(mail)) {
                              //email app opened
                            } else {
                              //email app is not opened
                            }
                          },
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Email:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                TextSpan(
                                    text: 'enquiry@flexfilm.com',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.blue)),
                              ],
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
        ],
      ),
    );
  }
}
