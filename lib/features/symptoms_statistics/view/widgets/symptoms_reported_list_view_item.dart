
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/model/range_model.dart';
import 'package:task/features/symptoms_statistics/view/widgets/range_widget.dart';

import '../../model/symptoms_reported_list_view_item_model.dart';

class SymptomsReportedListViewItem extends StatelessWidget {
  const SymptomsReportedListViewItem({super.key, required this.controller, required this.model});

  final ExpandableController controller;
  final SymptomsReportedListViewItemModel model ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.withOpacity(.3),
        ),
      ),
      child: ExpandablePanel(
        controller: controller,
        theme: const ExpandableThemeData(
          expandIcon: Icons.arrow_drop_down,
          collapseIcon: Icons.arrow_drop_down,
          iconColor: Color(0xff6CA491),
          iconSize: 24,
          iconPadding: EdgeInsets.only(bottom: 10, right: 5),
        ),
        header: Row(
          children: [
            const Icon(
              Icons.local_fire_department_outlined,
              color: Color(0xff6CA491),
            ),
            const SizedBox(
              width: 5,
            ),
             Text(
              model.text,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.play_arrow_outlined,
              color: Color(0xff6CA491),
              size: 18,
            ),
            const Spacer(),
            Container(
              height: 25,
              width: model.width.toDouble() ,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    model.color,
                    model.color.withOpacity(.8),
                    model.color.withOpacity(.7),
                    model.color.withOpacity(.6),
                    model.color.withOpacity(.5),
                  ],
                ),
                borderRadius: BorderRadius.circular(5),
                color: model.color,
              ),
              child:  Center(
                child: Text(
                  model.value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
        expanded: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Symptoms Frequency and Serverity',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                ranges.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 2),
                  child: RangeWidget(
                    text: ranges[index].text,
                    color: ranges[index].color,
                    num: ranges[index].num,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                        side: BorderSide(
                      color: Color(0xff6CA491),
                    )),
                  ),
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Color(0xff6CA491),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text('Number of Times Reported',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                const SizedBox(width: 20),
                 Icon(
                  Icons.error_outline,
                  color: const Color(0xff6CA491).withOpacity(.5),
                  size:  18,
                ),
              ],
            ),
          ],
        ),
        collapsed: const SizedBox.shrink(),
      ),
    );
  }
}
