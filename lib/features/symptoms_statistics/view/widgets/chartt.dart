import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LineChart(
        LineChartData(
          gridData : FlGridData(show: false),
          maxY: 6,
          maxX: 11,
          minX: 0,
          minY: 0,
          backgroundColor: Colors.grey.shade50,
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(

                isCurved: true,
                color: Colors.deepPurple,
                barWidth: 2,
                spots: [
                  const FlSpot(0, 3),
                  const FlSpot(2.6, 2),
                  const FlSpot(4.9, 5),
                  const FlSpot(6.8, 2.5),
                  const FlSpot(8, 4),
                  const FlSpot(11, 4),
                ])
          ],
        ),
      ),
    );
  }
}
