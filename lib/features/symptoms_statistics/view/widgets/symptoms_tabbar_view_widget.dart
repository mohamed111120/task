import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/symptoms_statistics/riverpod/symptoms_riverpod.dart';
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
        const SizedBox(height: 10),
        const SymptomsCircularPercentRow(),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("symptoms frequency and severity",
                style: TextStyle(color: Color(0xff625a67))),
            Icon(
              Icons.arrow_drop_down,
              color: Color(0xff97b8ad),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const SymptomsFrequencyAndServerity(),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Here are your activities and reminder on how to improve your symptoms:',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            var provider = ref.watch(symptomsProvider);
            return Column(
              children: List.generate(
                provider.improveListItem.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ImproveYourSymptomsContainer(
                    index: index,
                    provider: provider,
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Articles about how to improve your symptoms:',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SymptomsArticlesListView(),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xfff1edee)),
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xfffffaf7),
          ),
          child: const Text(
            textAlign: TextAlign.center,
            'Your programs has been updated according to your changes to your symptoms frequency and severity',
            style: TextStyle(fontSize: 14, color: Color(0xffa6a0a0)),
          ),
        ),
        const SizedBox(height: 20),
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
            child: const Text(
              'Symptoms Management Tools',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
