import 'package:flutter/material.dart';

import '../../model/improve_your_symptoms_model.dart';

class ImproveYourSymptomsContainer extends StatelessWidget {
  const ImproveYourSymptomsContainer({super.key, required this.model});

  final ImproveYourSymptomsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(.5)),
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
            Text(
              model.title,
              style: TextStyle(
                color: model.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 25,
              height: 25,
              decoration: ShapeDecoration(
                color: model.isChecked
                    ? const Color(0xff6CA491)
                    : Colors.transparent,
                shape: const CircleBorder(
                  side: BorderSide(
                    color: Color(0xff6CA491),
                  ),
                ),
              ),
              child: Icon(
                Icons.check,
                size: 15,
                color: model.isChecked ? Colors.white : Colors.transparent,
              ),
            )
          ],
        ));
  }
}
