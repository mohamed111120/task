import 'package:flutter/material.dart';

class SymptomsReportedListViewItemModel {
  final String text;
  final Color color;
  final String value;
  final int width;

  SymptomsReportedListViewItemModel({
    required this.text,
    required this.color,
    required this.value,
    required this.width,
  });
}

List<SymptomsReportedListViewItemModel> symptomsReportedListViewItemModel = [
  SymptomsReportedListViewItemModel(
    text: 'HotFlashes',
    color: Color(0xff6CA491),
    value: '50%',
    width: 70,
  ),
  SymptomsReportedListViewItemModel(
    text: 'Libido',
    color: Color(0xff99ABC1),
    value: '5%',
    width: 35,
  ),
  SymptomsReportedListViewItemModel(
    text: 'Sleep',
    color: Color(0xffD2A228),
    value: '5%',
    width: 35,
  ),
  SymptomsReportedListViewItemModel(
    text: 'Weight',
    color: Color(0xffFAAE82),
    value: '15%',
    width: 55,
  ),
  SymptomsReportedListViewItemModel(
    text: 'Dryness',
    color: Color(0xff4EAD93),
    value: '5%',
    width: 35,
  ),
  SymptomsReportedListViewItemModel(
    text: 'Gums',
    color: Color(0xff8Ea8E0),
    value: '15%',
    width: 55,
  ),
];
