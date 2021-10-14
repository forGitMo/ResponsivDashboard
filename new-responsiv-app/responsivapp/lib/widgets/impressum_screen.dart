import 'package:flutter/material.dart';

class Impressum extends StatefulWidget {
  Impressum({Key? key}) : super(key: key);

  @override
  State<Impressum> createState() => _ImpressumState();
}

class _ImpressumState extends State<Impressum> {
  late bool _droppedDown;
  @override
  void initState() {
    _droppedDown = false;
    super.initState();
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
            'ResposivWidget',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Impressum',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              AnimatedContainer(
                  curve: Curves.bounceIn,
                  duration: Duration(milliseconds: 11900),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(width: 2.0, color: Colors.black26)),
                  child: Text('data')),
            ],
          ),
        ),
      ),
    );
  }
}
