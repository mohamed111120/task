import 'package:flutter/material.dart';

class StatisticsContainer extends StatelessWidget {
  const StatisticsContainer({
    super.key,
    required this.child,
    required this.title,
    this.borderColor ,
    this.borderWidth = 1,
  });

  final Widget child;
  final String title;
  final Color? borderColor;

  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // height: 160,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor ?? Colors.grey.withOpacity(.3),
            width: borderWidth ?? 1,
          ),
        ),
        child: Column(
          children: [
            FittedBox(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
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
