import 'package:flutter/material.dart';

class ImproveYourSymptomsModel {
  String title;
  bool isChecked;
  Color textColor;
  String image;

  ImproveYourSymptomsModel({
    required this.title,
    required this.isChecked,
    required this.textColor,
    required this.image,
  });
}

List<ImproveYourSymptomsModel> improveYourSymptomsList = [
  ImproveYourSymptomsModel(
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_3lpmBb0jfOR8Abo4L9R8JqGXapjdYc01A&s',
    textColor:  Colors.orange,
    title: 'Avoiding Spicy Food',
    isChecked: true,
  ),
  ImproveYourSymptomsModel(
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_3lpmBb0jfOR8Abo4L9R8JqGXapjdYc01A&s',
    textColor:  Colors.blue,
    title: 'Improving Sleep',
    isChecked: true,
  ),
  ImproveYourSymptomsModel(
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_3lpmBb0jfOR8Abo4L9R8JqGXapjdYc01A&s',
    textColor:  Colors.purple,
    title: 'Reducing alcohol',
    isChecked: false,
  ),
  ImproveYourSymptomsModel(
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_3lpmBb0jfOR8Abo4L9R8JqGXapjdYc01A&s',
    textColor:  Colors.purpleAccent,
    title: 'Doing resistance exercise',
    isChecked: false,
  ),
];
