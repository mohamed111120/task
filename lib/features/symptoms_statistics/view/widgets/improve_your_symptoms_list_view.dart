import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/symptoms_view.dart';

import '../../model/improve_your_symptoms_model.dart';
import 'improve_your_symptoms_container.dart';

class ImproveYourSymptomsListView extends StatelessWidget {
  const ImproveYourSymptomsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: improveYourSymptomsList.length,
        itemBuilder: (context, index) {
          return  Column(
            children: [
              ImproveYourSymptomsContainer(
                model: improveYourSymptomsList[index],
              ),
              SizedBox(height: 10),
            ],
          );
        });
  }
}
