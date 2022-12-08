import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class financials extends StatefulWidget {
  const financials({super.key});

  @override
  State<financials> createState() => _financialsState();
}

class _financialsState extends State<financials> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Financials',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              child: Text(
                'Our undaunted commitment towards Product Innovation and continual Process Improvement helps us add value to the business of our clients globally, which in turn enhances our Financial Performance!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 450,
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Center(
                  child: InkWell(
                onTap: () async {
                  const url = 'https://www.uflexltd.com/financials.php';
                  if (await canLaunch(url)) {
                    await launch(url,
                        forceWebView: false, enableJavaScript: false);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  '<<FOR MORE FINANCIAL RESULTS CLICK HERE>>',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              )),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.blue,
                width: 2,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
