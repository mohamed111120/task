import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/custom_button.dart';
import 'package:task/features/symptoms_statistics/view/widgets/improve_your_symptoms_list_view.dart';
import 'package:task/features/symptoms_statistics/view/widgets/programs_updatted_container.dart';
import 'package:task/features/symptoms_statistics/view/widgets/stmptoms_dashboard_row.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_articles_list_view.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_circular_percent_row.dart';
import 'improve_your_symptoms_container.dart';
import 'symptoms_frequency_and_serverity_expandable_panel.dart';

class SymptomsTabBarViewWidget extends StatelessWidget {
  const SymptomsTabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SymptomsDashboardRow(),
        SizedBox(height: 20),
        SymptomsCircularPercentRow(),
        SizedBox(
          height: 20,
        ),
        SymptomsFrequencyAndServerityExpandablePanel(),
        SizedBox(
          height: 30,
        ),
        Text(
          'Here are your activities and reminder on how to improve your symptoms:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ImproveYourSymptomsListView(),
        SizedBox(height: 20),
        Text(
          'Articles about how to improve your symptoms:',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        SymptomsArticlesListView(),
        SizedBox(height: 20),
        ProgramsUpdatedContainer(),
        SizedBox(height: 20),
        CustomButton(),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

