import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Asclepius extends StatefulWidget {
  const Asclepius({super.key});

  @override
  State<Asclepius> createState() => _AsclepiusState();
}

class _AsclepiusState extends State<Asclepius> {
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
                'Green Packaging Films to Create a Circular Economy',
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
                'Flex Films has been offering an entire range of PCR grade film having upto 100% post-consumer recycled PET content under the brand name Asclepius™. These PCR film derived from post-consumer PET bottle waste have the same attributes and uses, as its twin substrate made out of fossil fuel.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text(
                'FlexFilm’s Asclepius™ film technology is a family of plain, treated, coated, high barrier and heat-sealable BOPET films based on upto 100% Post consumer waste recycled (PCR) PET Resin. This film represents a 75% reduction in carbon footprint and comes with enhanced sustainability and significantly lower net energy requirement for production when compared to virgin BOPET grades.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text(
                'Asclepius™ is the only upto 100% PCR BOPET film that has received the prestigious ‘Kingfisher’ Certification from SCS Global Services. This certification corroborates to its customers and to the flexible films market, the integrity of its supply chain and claims regarding PCR based film technology.Customers have started using these films in a range of packaging and labelling applications in order to help consumer brands achieve sustainability goals faster.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
