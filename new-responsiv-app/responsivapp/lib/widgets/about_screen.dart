import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsivapp/widgets/responsiv_widget.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  double _width = 300;
  double _height = 300;
  double _imageHeight = 100;
  double _imageWidth = 200;
  double _frontsize = 20;
  double _padding = 5;
  double _Boxheight = 5;
  double _size = 12;
  var _color = Colors.black54;

  double? updateState() {
    setState(() {
      if (_width == 300) {
        _height = 600;
        _width = 600;
        _imageHeight = 200;
        _imageWidth = 400;
        _padding = 22;
        _Boxheight = 20;
        _size = 20;
        Future.delayed(const Duration(milliseconds: 10), () {
          // Here you can write your code
          setState(() {
            // Here you can write your code for open new view
            _frontsize = 30;
          });
        });
      } else {
        _width = 300;
        _height = 300;
        _imageHeight = 100;
        _imageWidth = 200;
        _padding = 10;
        _Boxheight = 5;
        _frontsize = 18;
        _size = 12;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(
          elevation: 5,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    image: DecorationImage(
                      image: NetworkImage(""),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                        hoverColor: Colors.purple,
                        title: const Text(
                          'About',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                          Navigator.pushNamed(context, '/aboutscreen');
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.dashboard,
                          color: Colors.white,
                        ),
                        hoverColor: Colors.purple,
                        title: const Text(
                          'Dashboard',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                          Navigator.pushNamed(context, '/responsivwidget');
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.house,
                          color: Colors.white,
                        ),
                        hoverColor: Colors.purple,
                        title: const Text(
                          'Impressum',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          // Update the state of the app.
                          // ...
                          Navigator.pushNamed(context, '/impressum');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          titleSpacing: 20,
          title: Text(
            'ResponsivWidget',
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) => Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.people,
                          size: 70,
                          color: Colors.white54,
                        ),
                        Text(
                          'About',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        updateState();
                      },
                      child: Card(
                        child: AnimatedContainer(
                          curve: Curves.easeOutQuint,
                          width: _width,
                          height: _height,
                          color: _color,
                          duration: Duration(milliseconds: 900),
                          child: Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(22),
                                child: Column(
                                  children: [
                                    Column(children: [
                                      Container(
                                        child: Text(
                                          'Moritz Amelang',
                                          style: TextStyle(
                                            fontSize: _frontsize,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                            child: Placeholder(
                                          fallbackHeight: _imageHeight,
                                          fallbackWidth: _imageWidth,
                                        )),
                                      ),
                                    ]),
                                    Center(
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      print('call');
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.phone,
                                                          color: Colors.white,
                                                          size: 20,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(2.0),
                                                          child: Text(
                                                            'call me',
                                                            style: TextStyle(
                                                                fontSize:
                                                                    _size),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      print('write');
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.email,
                                                          color: Colors.white,
                                                          size: 20,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(2.0),
                                                          child: Text(
                                                            'write me',
                                                            style: TextStyle(
                                                                fontSize:
                                                                    _size),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      print('follow');
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .g_mobiledata_outlined,
                                                          color: Colors.white,
                                                          size: 20,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(2.0),
                                                          child: Text(
                                                            'follow me',
                                                            style: TextStyle(
                                                                fontSize:
                                                                    _size),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: _Boxheight,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Container(
                                                  child: Text(
                                                    'App/Web Developer',
                                                    style: TextStyle(
                                                        fontSize:
                                                            _frontsize - 5),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.all(_padding),
                                                child: Container(
                                                  child: Text(
                                                    'I am a german developer based in Krefeld. At the moment Iam doing an internship in a company that specializes in logistical apps called AppLogik GmbH.',
                                                    style: TextStyle(
                                                        fontSize:
                                                            _frontsize - 9,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
