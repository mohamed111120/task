import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_reported_list_view_item.dart';

class SymptomsReported extends StatelessWidget {
  const SymptomsReported({super.key});

  @override
  Widget build(BuildContext context) {
    List controllers = List.generate(
      5,
      (index) => ExpandableController(initialExpanded: true),
    );
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return SymptomsReportedListViewItem(
          controller: controllers[index],
        );
      },
    );
  }
}
