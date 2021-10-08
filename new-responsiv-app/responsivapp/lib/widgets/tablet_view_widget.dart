import 'package:flutter/material.dart';
import 'dart:html';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

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
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Placeholder(
                                fallbackHeight: 300,
                                strokeWidth: 10,
                                color: Colors.black12,
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
                                  child: Stack(children: [
                                    Card(
                                      color: Colors.black12,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              width: double.infinity,
                                              child: Text(
                                                'look at this Diagram',
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            height: 92,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      child: Container(
                                                        height: 60,
                                                        width: 5,
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 20,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 40,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 45,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 55,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 80,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 30,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 40,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 76,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 60,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 60,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 55,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 80,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 55,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 80,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 20,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 40,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 45,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 55,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 20,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 40,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 45,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 70,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 55,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Container(
                                                    height: 50,
                                                    width: 5,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Card(
                                    color: Colors.black12,
                                    child: Container(
                                        height: 95,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Container(
                                                  child: Text(
                                                    'look at this Diagram',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Container(
                                                  height: 10,
                                                  color: Colors.red,
                                                  margin: EdgeInsets.only(
                                                      right: 220),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 180),
                                                  height: 10,
                                                  color: Colors.orange,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 120),
                                                  height: 10,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
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
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                  child: Container(
                                    height: 340,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Placeholder(
                                              fallbackWidth: 200,
                                              color: Colors.black26,
                                              strokeWidth: 5,
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Expanded(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text('data100'),
                                              )),
                                            ],
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
