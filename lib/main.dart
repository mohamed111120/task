import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/symptoms_view.dart';

void main() {
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SymptomsView(),
    );
  }
}

