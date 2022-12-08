import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ceoSpeaks extends StatefulWidget {
  const ceoSpeaks({super.key});

  @override
  State<ceoSpeaks> createState() => _ceoSpeaksState();
}

class _ceoSpeaksState extends State<ceoSpeaks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'CEO ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: 'Speaks ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.5,
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
                    "assets/aboutUs/ceospeaks/mr-Anantshree-Chaturvedi.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              child: Text(
                ' Mr. Anantshree Chaturvedi',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              child: Text(
                'Vice Chairman & CEO',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Text(
                'Flex Films International',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 200,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.facebook.com/uflexltd';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/facebook.jpeg'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://twitter.com/uflexltd';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/twitter.png'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.linkedin.com/company/uflexltd';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/linkedin.png'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.youtube.com/c/uflexltdpackaging';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/contactus/youtube.png'),
                      ),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () async {
                    const url = 'https://www.uflexltd.com/blog/';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: false, enableJavaScript: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 1.0,
                  padding: EdgeInsets.all(0),
                  constraints: BoxConstraints.expand(width: 42, height: 42),
                  fillColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      //backgroundColor: Colors.black,
                      radius: 20,
                      child: CircleAvatar(
                          radius: 20,
                          child: Image(
                            image: AssetImage('assets/contactus/blog.png'),
                          )),
                    ),
                  ),
                  shape: CircleBorder(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Dear ',
                      style: TextStyle(
                        fontSize: 35,
                      )),
                  TextSpan(
                      text: 'Friends, ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
                ],
              ),
            ),
          ),
          Card(
            elevation: 0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    height: 2,
                    width: 510,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'At Flex Films we are guided by innovation to create value added differentiation to the best advantage of our clients spread in over 150 countries across the globe. Films are at the heart of flexible packaging and with over three decades of rich experience we precisely understand what our customers want.',
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 150,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'In converting, everything starts with a film or substrate. Science comes alive when different substrates are carefully engineered and treated to impart desired properties in the ensuing laminate that eventually forms the packaging for a particular product. The skill and finesse that further goes into the process of converting these substrates into laminates is an Art.',
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
          SizedBox(
            width: 390,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'It is this perfect interplay of Art and Science that brings in the much required innovation to create value added differentiation in the field of converting/packaging. I am glad that our large and innovative assortment of films and substrates has been adding incrementally progressive value to the businesses of convertors and brands alike across the globe.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 100,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'I am glad that our state-of-the-art film manufacturing facilities at India, UAE, Poland, Egypt, Mexico, USA, Russia, Hungary & Nigeria serve as laboratories for our esteemed clients to continually engage with our R&D and Marketing verticals for coming up with the most innovative, sustainable and bespoke films.',
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
          SizedBox(
            width: 390,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'No two products that we engineer are likely to be the same; such is the level of customization we offer. With the support of our dedicated and agile workforce, we ensure an enviable speed to market reach delivering innovation globally much ahead of the competition. Our unwavering focus on quality and sustainability blended with our capabilities to service any quantum of order and ensuring just-in-time deliveries anywhere in the world makes us truly unique.',
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 65,
                        width: 5,
                      ),
                    ),
                    SizedBox(
                      width: 355,
                      child: Center(
                        child: Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'We remain committed to delight you with the most innovative, sustainable and path-breaking developments in film manufacturing.',
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
        ],
      ),
    );
  }
}
