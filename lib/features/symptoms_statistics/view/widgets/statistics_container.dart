import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatisticsContainer extends StatelessWidget {
  StatisticsContainer(
      {super.key,
      this.isGreyBorder = true,
      required this.child,
      required this.title});

  final Widget child;
  bool isGreyBorder = true;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 136,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: isGreyBorder ? 1 : 2,
              color: isGreyBorder
                  ? Colors.grey.withOpacity(.3)
                  : const Color(0xff948298)),
        ),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            child,
          ],
        ),
      ),
    );
  }
}
