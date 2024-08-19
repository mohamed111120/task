import 'package:flutter/material.dart';

class RangeModel {
  final String text;

  final Color color;

  final int num;

  RangeModel({required this.text, required this.color, required this.num});
}

List<RangeModel> ranges = [
  RangeModel(
    text: 'low',
    color: Color(0xff6CA491),
    num: 1,
  ),
  RangeModel(
    text: 'medium',
    color: Colors.yellow,
    num: 2,
  ),
  RangeModel(
    text: 'high',
    color: Colors.orange,
    num: 3,
  ),
  RangeModel(
    text: 'Extreme',
    color: Colors.red,
    num: 4,
  ),
];
