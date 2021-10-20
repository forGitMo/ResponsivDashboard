import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'chart.dart';

class LineChart extends StatelessWidget {
  final List<DeveloperSeries> data;

  LineChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeveloperSeries, num>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (DeveloperSeries series, _) => series.year,
          measureFn: (DeveloperSeries series, _) => series.developers,
          colorFn: (DeveloperSeries series, _) => series.barColor)
    ];

    return Container(
      height: 300,
      padding: EdgeInsets.all(10),
      child: Card(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: <Widget>[
              Text(
                "Yearly Growth in the Flutter Community",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: charts.LineChart(
                  series,
                  domainAxis: charts.NumericAxisSpec(
                    tickProviderSpec:
                        charts.BasicNumericTickProviderSpec(zeroBound: false),
                    viewport: charts.NumericExtents(2016.0, 2022.0),
                  ),
                  animate: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
