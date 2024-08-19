import 'package:flutter/material.dart';

class ImproveYourSymptomsModel {
  String title;
  bool isChecked;
  Color textColor;

  ImproveYourSymptomsModel({
    required this.title,
    required this.isChecked,
    required this.textColor,
  });
}

List<ImproveYourSymptomsModel> improveYourSymptomsList = [
  ImproveYourSymptomsModel(
    textColor:  Colors.orange,
    title: 'Avoiding Spicy Food',
    isChecked: true,
  ),
  ImproveYourSymptomsModel(
    textColor:  Colors.blue,
    title: 'Improving Sleep',
    isChecked: true,
  ),
  ImproveYourSymptomsModel(
    textColor:  Colors.purple,
    title: 'Reducing alcohol',
    isChecked: false,
  ),
  ImproveYourSymptomsModel(
    textColor:  Colors.purpleAccent,
    title: 'Doing resistance exercise',
    isChecked: false,
  ),
];
