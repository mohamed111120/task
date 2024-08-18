import 'dart:developer';

import 'package:animated_toggle/animated_toggle.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_reported.dart';
import 'package:task/features/symptoms_statistics/view/widgets/total_symptoms_row_item.dart';

class SymptomsFrequencyAndServerity extends StatelessWidget {
  const SymptomsFrequencyAndServerity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff6CA491).withOpacity(.1),
      child: Column(
        children: [
          AnimatedHorizontalToggle(
            taps: const [
              'Symptoms Reported',
              'Triggers Reported',
            ],
            width: MediaQuery.of(context).size.width - 40,
            height: 48,
            duration: const Duration(milliseconds: 100),
            initialIndex: 0,
            background: Colors.transparent,
            activeColor: Color(0xff6CA491),
            activeTextStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
            ),
            inActiveTextStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              overflow: TextOverflow.ellipsis,
            ),
            // the next 2 line if you need to put padding for the inactive buttons
            horizontalPadding: 6,
            inActiveColor: Colors.white,
            inActiveButtonRadius: 12,
            verticalPadding: 4,
            // the next 2 line if you need to put padding for the active button
            activeHorizontalPadding: 4,
            activeVerticalPadding: 4,
            radius: 14,
            // you can control the radius for the Animated widget
            activeButtonRadius: 12,
            // you can control the radius for the active button
            onChange: (int currentIndex, int targetIndex) {
              // write Your Personal Code Here
            },
            showActiveButtonColor: true,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SymptomsReported(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total: 6 Symptoms 100%',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 80,
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xff6CA491)),
                    ),
                    child: const Center(
                      child: Text(
                        'Legendo',
                        style: TextStyle(
                          color: Color(0xff6CA491),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TotalSymptomsRowItem(
                      color: Color(0xff6CA491),
                      text: 'the Same',
                    ),
                    TotalSymptomsRowItem(
                      color: Color(0xff6CA491),
                      text: 'the Same',
                    ),
                    TotalSymptomsRowItem(
                      color: Color(0xff6CA491),
                      text: 'the Same',
                    ),
                    TotalSymptomsRowItem(
                      color: Color(0xff6CA491),
                      text: 'the Same',
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
