import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task/features/symptoms_statistics/view/widgets/statistics_container.dart';

import '../../../../main.dart';
import 'chartt.dart';

class SymptomsCircularPercentRow extends StatelessWidget {
  const SymptomsCircularPercentRow({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          StatisticsContainer(
            title: 'Symptoms Score',
            child: CircularPercentIndicator(
              radius: 46,
              lineWidth: 6,
              percent: 0.8,
              progressColor: const Color(0xffAA5168),
              backgroundColor: const Color(0xffAA5168).withOpacity(.2),
              circularStrokeCap: CircularStrokeCap.round,
              center: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '80/100',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Severe',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          StatisticsContainer(
            borderWidth: 2,
            borderColor: Color(0xff8D43A2),
            title: 'Score Statistics',
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Chart()
                ),
                Text(
                  '7 Days',
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff8D43A2),
                    color: Color(0xff8D43A2),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          StatisticsContainer(
            title: 'Moderate',
            child: CircularPercentIndicator(
              radius: 46,
              lineWidth: 6,
              percent: 0.8,
              progressColor: const Color(0xffED7F41),
              backgroundColor: const Color(0xffED7F41).withOpacity(.2),
              circularStrokeCap: CircularStrokeCap.round,
              center: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '65/100',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Moderate',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
