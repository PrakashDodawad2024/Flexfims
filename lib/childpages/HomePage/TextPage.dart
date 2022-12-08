import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Container(
          child: Wrap(
        children: [
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Flex Films - ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                TextSpan(
                    text: 'The ',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: ' Perfect Solution  ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                TextSpan(
                    text: 'for ',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ],
            ),
          ),
          Center(
            child: Text.rich(
              TextSpan(
                text: 'converters!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'With the most contemporary technology, Research and development (R&D) capabilities and some of the best brains by its side Flex Films is the trendsetter for the Art and Science of Converting.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
