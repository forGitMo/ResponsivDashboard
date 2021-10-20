import 'package:flutter/material.dart';
import 'dart:html';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:responsivapp/widgets/chartbar.dart';
import 'package:responsivapp/widgets/linechart.dart';
import 'chartcircul.dart';

import 'package:responsivapp/widgets/chart.dart';
import 'package:responsivapp/widgets/chartcircul.dart';

class TabletView extends StatelessWidget {
  TabletView({Key? key}) : super(key: key);

  @override
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
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                        child: Text('data100'))
                                                  ],
                                                ),
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
                              child: CirculChart(data: data),
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
                                  child: Stack(children: [
                                    Card(
                                      color: Colors.black12,
                                      child: Column(
                                        children: [
                                          DeveloperChart(
                                            data: data,
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
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
                                              width: 100,
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
                                      child: Text('data'),
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
                            child: Expanded(
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    child: Container(
                                      height: 340,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: LineChart(data: data),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
