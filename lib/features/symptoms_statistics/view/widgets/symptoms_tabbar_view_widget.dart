import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/stmptoms_dashboard_row.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_articles_list_view.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_circular_percent_row.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_frequency_and_serverity.dart';
import 'improve_your_symptoms_container.dart';

class SymptomsTabBarViewWidget extends StatelessWidget {
  const SymptomsTabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SymptomsDashboardRow(),
        const SizedBox(height: 20),
        const SymptomsCircularPercentRow(),
        const SizedBox(
          height: 20,
        ),
        ExpandablePanel(
          theme: const ExpandableThemeData(
            expandIcon: Icons.arrow_drop_down,
            collapseIcon: Icons.arrow_drop_up,
            iconColor: Color(0xff6CA491),
            iconSize: 24,
          ),
          header: const Text(
            'Symptoms frequency and serverity',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          collapsed: const SizedBox.shrink(),
          expanded: const SymptomsFrequencyAndServerity(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Here are your activities and reminder on how to improve your symptoms',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: List.generate(
            4,
            (index) => Column(
              children: [
                ImproveYourSymptomsContainer(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        const Text(
          'Articles about how to improve your symptoms',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SymptomsArticlesListView(),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(.2),
          ),
          child: Text(
            textAlign: TextAlign.center,
            'Show more articles Show more Show more articles Show more articles Show more articles Show more articles',
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFE893A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Symptoms Management Tools',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
