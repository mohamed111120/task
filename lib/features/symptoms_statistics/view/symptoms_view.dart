import 'package:animated_toggle/animated_toggle.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_tabbar_view_widget.dart';

class SymptomsView extends StatefulWidget {
  const SymptomsView({super.key});

  @override
  State<SymptomsView> createState() => _SymptomsViewState();
}
int index = 0;

class _SymptomsViewState extends State<SymptomsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  AnimatedHorizontalToggle(
                    taps: const [
                      'Symptoms statistics',
                      'Symptoms daily',
                    ],
                    width: MediaQuery.of(context).size.width - 40,
                    height: 48,
                    duration: const Duration(milliseconds: 100),
                    initialIndex: 0,
                    background: Colors.white,
                    activeColor: Colors.deepPurple,
                    inActiveColor: Colors.grey.shade100,
                    inActiveButtonRadius: 10,
                    activeTextStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                    inActiveTextStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    // the next 2 line if you need to put padding for the inactive buttons
                    horizontalPadding: 8,
                    verticalPadding: 4,
                    // the next 2 line if you need to put padding for the active button
                    activeHorizontalPadding: 2,
                    activeVerticalPadding: 4,
                    radius: 10,
                    // you can control the radius for the Animated widget
                    activeButtonRadius: 10,
                    // you can control the radius for the active button
                    onChange: (int currentIndex, int targetIndex) {
                      print('currentIndex: $currentIndex, targetIndex: $targetIndex');
                      index = currentIndex;
                      setState(() {});
                    },
                    showActiveButtonColor: true,

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  index == 0
                      ? const SymptomsTabBarViewWidget()
                      : Container(),
                ],
              ),
            ),
          )),
    );
  }
}
