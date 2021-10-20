import 'package:flutter/material.dart';
import 'package:responsivapp/widgets/chart.dart';
import 'package:responsivapp/widgets/chartbar.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:responsivapp/widgets/linechart.dart';
import 'chartcircul.dart';
import 'package:responsivapp/widgets/chartcircul.dart';
import 'chart.dart';

class PhoneView extends StatelessWidget {
  PhoneView({Key? key}) : super(key: key);
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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Flex(
          direction: axisDirectionToAxis(flipAxisDirection(AxisDirection.up)),
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                child: Text(
                  'Responsiv Dashboard',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  color: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                                      bottom: 8.0, right: 8.0, left: 8.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(child: Text('data100'))
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
                Card(
                  color: Colors.black12,
                  child: SizedBox(
                    child: CirculChart(
                      data: data,
                    ),
                  ),
                ),
                Card(
                  color: Colors.black12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
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
                Card(
                  color: Colors.black12,
                  child: Container(
                    height: 100,
                    child: Stack(fit: StackFit.expand, children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4)),
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
                            backgroundColor: Colors.black54,
                          ),
                          softWrap: true,
                          textScaleFactor: 0.9,
                        ),
                      ),
                    ]),
                  ),
                ),
                Card(
                  color: Colors.black12,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          height: 340,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: LineChart(data: data),
                                )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
