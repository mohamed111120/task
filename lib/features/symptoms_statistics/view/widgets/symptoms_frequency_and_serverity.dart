import 'dart:developer';

import 'package:animated_toggle/animated_toggle.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_reported.dart';

class SymptomsFrequencyAndServerity extends StatefulWidget {
  const SymptomsFrequencyAndServerity({super.key});

  @override
  State<SymptomsFrequencyAndServerity> createState() =>
      _SymptomsFrequencyAndServerityState();
}

int index = 0;

class _SymptomsFrequencyAndServerityState
    extends State<SymptomsFrequencyAndServerity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Color(0xff6CA491).withOpacity(.1),
        borderRadius: BorderRadius.circular(10),
      ),
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
              index = currentIndex;
              setState(() {});
              // write Your Personal Code Here
            },
            showActiveButtonColor: true,
          ),
          index == 0
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SymptomsReported(),
                )
              : const Text('Triggers Reported'),
        ],
      ),
    );
  }
}
