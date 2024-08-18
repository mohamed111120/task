import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
                Spacer(),
                CircularPercentIndicator(
                  radius: 46,
                  lineWidth: 6,
                  percent: 0.8,
                  progressColor: const Color(0xff8D43A2),
                  backgroundColor: const Color(0xff8D43A2).withOpacity(.2),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '80/100',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Severe',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
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
        SizedBox(
          width: 10,
        ),
        StatisticsContainer(
          title: 'Score Statistics',
          child: Expanded(
            child: Column(
              children: [
                Text(
                  'Statistics photo',
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
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
        SizedBox(
          width: 10,
        ),
        StatisticsContainer(
          title: 'Moderate',
          child: Expanded(
            child: Column(
              children: [
                Spacer(),
                CircularPercentIndicator(
                  radius: 46,
                  lineWidth: 6,
                  percent: 0.8,
                  progressColor: const Color(0xff8D43A2),
                  backgroundColor: const Color(0xff8D43A2).withOpacity(.2),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '65/100',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Moderate',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
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