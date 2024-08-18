import 'package:flutter/material.dart';

class ImproveYourSymptomsContainer extends StatelessWidget {
  const ImproveYourSymptomsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff6CA491),
              ),
            ),
            Text('Improve your symptoms'),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 25,
              height: 25,
              decoration: ShapeDecoration(
                shape: const CircleBorder(
                  side: BorderSide(
                    color: Color(0xff6CA491),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
