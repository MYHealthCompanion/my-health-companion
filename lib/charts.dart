import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class LineChart extends StatelessWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Line Chart",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      )),
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Container(
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: <ChartSeries>[
              LineSeries<ChartData, String>(
                dataSource: [
                  ChartData('Jan', 35),
                  ChartData('Feb', 38),
                  ChartData('Mar', 20),
                  ChartData('Apr', 38),
                  ChartData('May', 50)
                ],
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
