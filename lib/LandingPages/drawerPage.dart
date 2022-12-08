import 'package:flutter/material.dart';

import 'AllData.dart';
import 'HomePage.dart';

class DrawerPage extends StatefulWidget {
  BuildContext context;
  // int i;
  DrawerPage({required this.context});
  @override
  State<DrawerPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<DrawerPage> {
  @override
  List<Map<String, dynamic>> _data = [];
  List<Map<String, dynamic>> _data1 = [];
  void initState() {
    // TODO: implement initState
    super.initState();
    assign();
  }

  void assign() {
    _data = [
      {
        'Header': 'ABOUT US',
        'isexpanded': false,
        'body': <Widget>[
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 1;
                Alldata.aboutpageindex = 0;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('Company Profile')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 1;
                Alldata.aboutpageindex = 1;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('CMD\'s Vision')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 1;
                Alldata.aboutpageindex = 2;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('CEO Speaks')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 1;
                Alldata.aboutpageindex = 3;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('Milestones')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 1;
                Alldata.aboutpageindex = 4;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('Our Policy')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 1;
                Alldata.aboutpageindex = 5;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text(' Financials')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 1;
                Alldata.aboutpageindex = 6;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('Certificates & Recognitions')),
        ]
      },
      {
        'Header': 'PRODUCTS',
        'isexpanded': false,
        'body': <Widget>[
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 0;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('All Products')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 1;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('New Product Launches')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 2;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('BOPET Films')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 3;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('BOPP Films')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 4;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('CPP Films')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 5;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('Metalized Films')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 6;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('Alox Coated Films')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 2;
                Alldata.Productpageindex = 7;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
              },
              child: Text('Speciality Films')),
        ]
      }
    ];
    _data1 = [
      {
        'Header': 'GLOBAL PRESENCE',
        'isexpanded': false,
        'body': <Widget>[
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 0;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                // Navigator.of(widget.context)
                //     .pushReplacementNamed('/GlobalPerspect');
              },
              child: Text('Global Perspective')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 1;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                // Navigator.of(widget.context).pushReplacementNamed('/India');
              },
              child: Text('Films Business India')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 2;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                //  Navigator.of(widget.context).pushReplacementNamed('/Uae');
              },
              child: Text('Flex Films UAE')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 3;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                //  Navigator.of(widget.context).pushReplacementNamed('/Mexico');
              },
              child: Text('Flex Films Mexico')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 4;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                // Navigator.of(widget.context).pushReplacementNamed('/Egypt');
              },
              child: Text('Flex Films Egypt')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 5;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                //  Navigator.of(widget.context).pushReplacementNamed('/Poland');
              },
              child: Text('Flex Films Poland')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 6;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                //  Navigator.of(widget.context).pushReplacementNamed('/Usa');
              },
              child: Text('Flex Films USA')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 7;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                //  Navigator.of(widget.context).pushReplacementNamed('/Russia');
              },
              child: Text('Flex Films Russia')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 8;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                //  Navigator.of(widget.context).pushReplacementNamed('/Russia');
              },
              child: Text('Flex Films Hungary')),
          TextButton(
              onPressed: () {
                Alldata.homepageindex = 4;
                Alldata.Globalpageindex = 9;
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => MyHomePage())));
                //  Navigator.of(widget.context).pushReplacementNamed('/Nigeria');
              },
              child: Text('Flex Films Nigeria')),
        ]
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'HOME',
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                onTap: () {
                  Alldata.homepageindex = 0;
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => MyHomePage())));
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) => HomePage(),
                  //   ),
                  // );
                },
              ),
              _buildPanel('AP'),
              ListTile(
                title: Text(
                  'INNOVATIONS',
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                onTap: () {
                  Alldata.homepageindex = 3;
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => MyHomePage())));
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) => innovation(),
                  //   ),
                  // );
                },
              ),
              _buildPanel('GP'),
              ListTile(
                title: Text(
                  'CARRERS',
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                onTap: () {
                  Alldata.homepageindex = 5;
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => MyHomePage())));
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) => carrers(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                title: Text(
                  'CONTACT US',
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                onTap: () {
                  Alldata.homepageindex = 6;
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => MyHomePage())));
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) => contactUs(),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ));
  }

  Widget _buildPanel(String emn) {
    List<Map<String, dynamic>> _localdata = [];
    if (emn == 'AP') {
      _localdata = _data;
    } else {
      _localdata = _data1;
    }
    return ExpansionPanelList(
      elevation: 0,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _localdata[index]['isexpanded'] = !isExpanded;
        });
      },
      children: _localdata.map<ExpansionPanel>((item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                item['Header'],
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.red),
              ),
            );
          },
          body: Container(
            width: double.infinity,
            alignment: Alignment.topLeft,
            //color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: item['body'],
            ),
          ),
          isExpanded: item['isexpanded'],
        );
      }).toList(),
    );
  }
}













// import 'package:flexfilm_application/screens/innovation.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';

// class DrawerPage extends StatefulWidget {
//   const DrawerPage({Key key}) : super(key: key);

//   @override
//   State<DrawerPage> createState() => _DrawerPageState();
// }

// class _DrawerPageState extends State<DrawerPage> {
//   bool tappedonAboutUs = false;
//   bool tappedonAllProducts = false;
//   bool tappedonGlobalPresence = false;
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(children: <Widget>[
//         ListTile(
//           title: Text('HOME'),
//           onTap: () {},
//         ),
//         ListView(
//           children: <Widget>[
//             ExpansionTile(
//                 title: InkWell(
//                     onTap: () {
//                       setState(() {
//                         tappedonAboutUs = true;
//                       });
//                     },
//                     child: Row(
//                       children: [Text("ABOUT US"), Icon(Icons.arrow_drop_down)],
//                     )),
//                 children: (tappedonAboutUs == true)
//                     ? <Widget>[
//                         Text("Company Profile"),
//                         Text("CMD's Vision"),
//                         Text("CEO Speaks"),
//                         Text("Our Policy"),
//                         Text("Financilals"),
//                         Text("Certificates and Recognigation"),
//                       ]
//                     : <Widget>[])
//           ],
//         ),
//         ListView(
//           children: <Widget>[
//             ExpansionTile(
//                 title: InkWell(
//                     onTap: () {
//                       setState(() {
//                         tappedonAllProducts = true;
//                       });
//                     },
//                     child: Row(
//                       children: [
//                         Text("All Products"),
//                         Icon(Icons.arrow_drop_down)
//                       ],
//                     )),
//                 children: (tappedonAllProducts == true)
//                     ? <Widget>[
//                         Text("BOPET Films"),
//                         Text("BOPP Films"),
//                         Text("CPP Films"),
//                         Text("Metalized Films"),
//                         Text("Alox Coated Films"),
//                         Text("Speciality Films"),
//                       ]
//                     : <Widget>[])
//           ],
//         ),
        // ListTile(
        //   title: Text('INNOVATIONS'),
        //   onTap: () {},
        // ),
//         ListView(
//           children: <Widget>[
//             ExpansionTile(
//                 title: InkWell(
//                     onTap: () {
//                       setState(() {
//                         tappedonGlobalPresence = true;
//                       });
//                     },
//                     child: Row(
//                       children: [
//                         Text("GLOBAL PRESENCE"),
//                         Icon(Icons.arrow_drop_down)
//                       ],
//                     )),
//                 children: (tappedonGlobalPresence == true)
//                     ? <Widget>[
//                         Text("Global Perspective"),
//                         Text("Films Business India"),
//                         Text("Flex Films UAE"),
//                         Text("Flex Films Mexico"),
//                         Text("Flex Films Egypt"),
//                         Text("Flex Films Poland"),
//                         Text("Flex Films USA"),
//                         Text("Flex Films Russia"),
//                         Text("Flex Films Hungary"),
//                         Text("Flex Films Nigeria"),
//                       ]
//                     : <Widget>[])
//           ],
//         ),
//         ListTile(
//           title: Text('CARRERS'),
//           onTap: () {},
//         ),
//         ListTile(
//           title: Text('CONTACT US'),
//           onTap: () {},
//         ),
//       ]),
//     );
//   }
// }
