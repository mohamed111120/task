import 'package:flutter/material.dart';

class RangeWidget extends StatelessWidget {
  const RangeWidget(
      {super.key, required this.text, required this.color, required this.num});

  final String text;

  final Color color;

  final int num;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
        ),
        const SizedBox(width: 2),
        Container(
          height: 20,
          width: 20,
          decoration: ShapeDecoration(
            shape: const CircleBorder(),
            color: color,
          ),
          child: Center(
            child: Text(
              num.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
