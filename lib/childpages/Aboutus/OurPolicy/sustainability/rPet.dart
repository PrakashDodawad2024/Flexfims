import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Rpet extends StatefulWidget {
  const Rpet({super.key});

  @override
  State<Rpet> createState() => _RpetState();
}

class _RpetState extends State<Rpet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Text(
                'For a better tomorrow',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text(
                'Made from POST CONSUMER WASTE RECYCLED (PCR) RESIN i.e. material previously used by consumers and recycled for use in a new product. rPET contains upto 30% of PCR resin obtained by tertiary chemical glycosis route.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text(
                'rPET is US FDA approved, EU compliant and is safe for food contact. It offers the same performance and properties like standard polyester films, while being environment friendly. The substrate is available in various thicknesses and widths.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
