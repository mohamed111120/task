import 'package:flutter/material.dart';

class TotalSymptomsRowItem extends StatelessWidget {
  const TotalSymptomsRowItem(
      {super.key, required this.color, required this.text});
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 10,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: color),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 50,
          child: Text(
            text,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
