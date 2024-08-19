import 'package:flutter/material.dart';

class TotalSymptomsRowItem extends StatelessWidget {
  const TotalSymptomsRowItem(
      {super.key, required this.color, required this.text});

  final Color color;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          children: [
            Container(
              width: 35,
              height: 8,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
                 gradient:  LinearGradient(
                   colors: [
                     color.withOpacity(.8),
                     color.withOpacity(.7),
                     color.withOpacity(.6),
                     color.withOpacity(.5),
                   ]
                 )
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
