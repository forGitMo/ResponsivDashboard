import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsivapp/widgets/about_screen.dart';
import 'package:responsivapp/widgets/chartbar.dart';
import 'package:responsivapp/widgets/chartcircul.dart';
import 'package:responsivapp/widgets/huge_window_view.dart';
import 'package:responsivapp/widgets/linechart.dart';
import 'package:responsivapp/widgets/phone_view_widget.dart';
import 'package:responsivapp/widgets/tablet_view_widget.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'chart.dart';

class ResposivWidget extends StatelessWidget {
  ResposivWidget({Key? key}) : super(key: key);

  var backgroundUrl =
      'https://wallpaperbat.com/img/437628-edinburgh-wallpaper-top-free-edinburgh-background.jpg';
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
          builder: (BuildContext context, BoxConstraints constrains) {
            if (constrains.maxWidth > 2200) {
              return HugeWindow();
            }
            if (constrains.maxWidth > 1300 /*1300*/) {
              return _fullsizedWidget();
            }
            if (constrains.maxWidth > 800) {
              return TabletView();
            } else {
              return PhoneView();
            }
          },
        ),
      ),
    );
  }
}

class _fullsizedWidget extends StatefulWidget {
  _fullsizedWidget();

  @override
  _nameState createState() => _nameState();
}

var numm = 100;
var data300 =
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer';
var data100 =
    'Lorem ipsum blar r blarb laorb xendedy elopri elmerte Lorem ipsum dolor sit amet,  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna ar blarb laorb xendedy elopri elmerte r blarb laorb xendedy elopri elmerte Lorem ipsum dolor sit amet,  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna ar blarb laorb xendedy elopri elmerte Lorem ipsum dolor sit amet,  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna ar blarb laorb xendedy elopri elmerte Lorem ipsum dolor sit amet,  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna ar blarb laorb xendedy elopri elmerte Lorem ipsum dolor sit amet,  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aLorem ipsum dolor sit amet,  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna a blarb laorb xendedy elopri elmerte Lorem ipsum dolor sit amet,  sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, imperdiet doming id quod mazim placerat facer';
final List<DeveloperSeries> data = [
  DeveloperSeries(
    year: 2017,
    developers: 400,
    barColor: charts.ColorUtil.fromDartColor(Colors.blueAccent),
  ),
  DeveloperSeries(
    year: 2018,
    developers: 50,
    barColor: charts.ColorUtil.fromDartColor(Colors.greenAccent),
  ),
  DeveloperSeries(
    year: 2019,
    developers: 400,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  DeveloperSeries(
    year: 2020,
    developers: 350,
    barColor: charts.ColorUtil.fromDartColor(Colors.purple),
  ),
  DeveloperSeries(
    year: 2021,
    developers: 450,
    barColor: charts.ColorUtil.fromDartColor(Colors.pink),
  ),
];

class _nameState extends State<_fullsizedWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(children: [
          Flex(
            direction: axisDirectionToAxis(flipAxisDirection(AxisDirection.up)),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  child: Text(
                    'Resposive Dashboard',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Card(
                          color: Colors.black12,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 300,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 15.0,
                                        left: 8.0,
                                      ),
                                      child: Text(
                                        'Title',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0,
                                              right: 8.0,
                                              left: 8.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Text(data100),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8.0, right: 8.0, left: 8.0),
                                        child: Placeholder(
                                          strokeWidth: 9,
                                          color: Colors.black12,
                                          fallbackHeight: 250,
                                          fallbackWidth: 150,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Card(
                          color: Colors.black12,
                          child: SizedBox(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: Text(data100),
                                        width: 400,
                                      ),
                                      Expanded(
                                        child: CirculChart(
                                          data: data,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Card(
                                    color: Colors.black12,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: FittedBox(),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.all(1),
                                          child: Column(
                                            children: [
                                              DeveloperChart(
                                                data: data,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    color: Colors.black12,
                                    child: Container(
                                      height: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('data'),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Card(
                                    color: Colors.black12,
                                    child: Container(
                                      height: 100,
                                      child: Stack(
                                          fit: StackFit.expand,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Image(
                                                alignment: Alignment.center,
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    'https://assets-global.website-files.com/5e3c45dea042cf97f3689681/5e5e75026dec910ce94f2578_5e417cd336a72b06a86c73e7_Flutter-Tutorial-Header%25402x.jpeg'),
                                              ),
                                            ),
                                            Positioned(
                                              top: 5,
                                              left: 5,
                                              child: Text(
                                                'Flutter a Framework based on Dart.',
                                                style: TextStyle(
                                                  backgroundColor:
                                                      Colors.black54,
                                                ),
                                                softWrap: true,
                                                textScaleFactor: 0.9,
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Card(
                                    color: Colors.black12,
                                    child: Container(
                                      height: 100,
                                      child: Container(
                                        constraints: BoxConstraints.expand(
                                          height: Theme.of(context)
                                                      .textTheme
                                                      .headline4!
                                                      .fontSize! *
                                                  1.1 +
                                              200.0,
                                        ),
                                        padding: const EdgeInsets.all(8.0),
                                        color: Colors.purple[300],
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Coming Soon',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(color: Colors.white),
                                        ),
                                        transform: Matrix4.rotationZ(0.04),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      //data200
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          child: Card(
                            color: Colors.black12,
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                  child: Container(
                                    height: 430,
                                    child: Container(
                                      child: LineChart(
                                        data: data,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          color: Colors.black12,
                          child: Container(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.access_alarms_outlined,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.verified_user_outlined,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.assessment_rounded,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.gite_rounded,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.edit_location_alt_outlined,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.timer_off,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
