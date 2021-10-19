import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsivapp/widgets/slide_up_widget.dart';

class Impressum extends StatelessWidget {
  slideUpWidget(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: SlideUpWidget(
            Bool: Bool,
          ),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  bool Bool = true;
  CreateStatement() {
    if (Bool == true) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.check,
            color: Colors.green,
          ),
          Text('alle verordungen akzeptiert')
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.keyboard_arrow_up,
            color: Colors.red,
          ),
          Text('akzeptiere alle verordnungen')
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                              Navigator.pushNamed(context, '/Impressum');
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
          body: Stack(
            children: [
              Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://media.istockphoto.com/photos/paragraph-sign-in-wood-style-leans-against-a-wall-wallpaper-picture-id995302350?k=20&m=995302350&s=612x612&w=0&h=ZxVsJ1Off5v8TD6LA-HmqMcvU4NAFBWbw4y4FC_CcTg=',
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.85,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.red,
                          Colors.blue,
                        ]),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Impressum',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Flutter Background Image Full Screen Gradient ',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black26),
                              ),
                              onPressed: () {
                                slideUpWidget(context);
                              },
                              child: Text('Datenschutverordnung'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black26),
                              ),
                              onPressed: () {
                                slideUpWidget(context);
                              },
                              child: Text('Urheberrechtsverordnung'),
                            ),
                          ),
                          CreateStatement(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
