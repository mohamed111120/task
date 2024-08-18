import 'package:flutter/material.dart';

class TotalSymptomsRowItem extends StatelessWidget {
  const TotalSymptomsRowItem({super.key, required this.color, required this.text});
  final Color color ;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 15,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color
          ),
        ),
        SizedBox(height: 5),
        Text(text),
      ],
    );
  }
}
