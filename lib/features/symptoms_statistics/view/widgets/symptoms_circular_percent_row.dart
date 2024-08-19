import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task/features/symptoms_statistics/view/widgets/line_chart.dart';
import 'package:task/features/symptoms_statistics/view/widgets/statistics_container.dart';

class SymptomsCircularPercentRow extends StatelessWidget {
  const SymptomsCircularPercentRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StatisticsContainer(
          title: 'Symptoms Score',
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 14,
                ),
                CircularPercentIndicator(
                  radius: 36,
                  lineWidth: 6,
                  percent: 0.8,
                  progressColor: const Color(0xffaa4662),
                  backgroundColor: const Color(0xffaa4662).withOpacity(.2),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '80/100',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Severe',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        StatisticsContainer(
          isGreyBorder: false,
          title: 'Score Statistics',
          child: const Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                LineChartSample2(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '7 Days',
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff8D43A2),
                    color: Color(0xff8D43A2),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        StatisticsContainer(
          title: 'Moderate',
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 14,
                ),
                CircularPercentIndicator(
                  radius: 36,
                  lineWidth: 6,
                  percent: 0.8,
                  progressColor: const Color(0xfff27d47),
                  backgroundColor: const Color(0xfff27d47).withOpacity(.2),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '65/100',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Moderate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
