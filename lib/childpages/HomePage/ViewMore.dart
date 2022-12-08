// import 'package:flexfilm_application/LandingPages/AllData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../LandingPages/AllData.dart';
import '../../LandingPages/HomePage.dart';
// import '../About_Us/AboutUs.dart';

class ViewMore extends StatefulWidget {
  @override
  State<ViewMore> createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 50,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          child: Center(
              child: InkWell(
            onTap: () {
              Alldata.homepageindex = 1;

              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ));
            },
            child: Text(
              'VIEW MORE>>',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          )),
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blue,
            width: 3,
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 290.0,
            width: 520.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/home/viewmore.jpg"),
                fit: BoxFit.fill,
              ),
              border: Border.all(color: Colors.black, width: 0.0),
              borderRadius: new BorderRadius.all(Radius.elliptical(310, 230)),
            ),
          ),
        )
      ],
    );
  }
}
