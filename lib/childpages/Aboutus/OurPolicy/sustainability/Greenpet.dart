import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GreenPet extends StatefulWidget {
  const GreenPet({super.key});

  @override
  State<GreenPet> createState() => _GreenPetState();
}

class _GreenPetState extends State<GreenPet> {
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
                'Back to the basics',
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
                'Made from PTA and GREEN MEG resin, wherein PTA is manufactured by Oxidation of p-xylene while GREEN MEG is manufactured from Ethanol obtained from Agro based source. This film does not contain any MEG which is conventionally made through the crude oil route. Green MEG is made from renewable source, and GREEN PET film contains 30% of GREEN MEG.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Text(
                'The film is FDA approved and adheres to EC Food Compliance Guidelines, making it absolutely safe for food contact, at the same time, maintaining the same qualities as that of natural PET film made from MEG which is derived from crude oil, with environment friendly characteristics.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
