import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_frequency_and_serverity.dart';

class  SymptomsFrequencyAndServerityExpandablePanel extends StatelessWidget {
  const  SymptomsFrequencyAndServerityExpandablePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return  ExpandablePanel(
      controller:  ExpandableController(initialExpanded: true),
      theme: const ExpandableThemeData(
        expandIcon: Icons.arrow_drop_down,
        collapseIcon: Icons.arrow_drop_up,
        iconColor: Color(0xff6CA491),
        iconSize: 28,
        iconPadding: EdgeInsets.only( bottom: 20, right: 5),
      ),
      header: const Text(
        'Symptoms frequency and serverity',
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      collapsed: const SizedBox.shrink(),
      expanded: const SymptomsFrequencyAndServerity(),
    );
  }
}
