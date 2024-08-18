import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/range_widget.dart';

class SymptomsReportedListViewItem extends StatelessWidget {
  const SymptomsReportedListViewItem({super.key, required this.controller});

  final ExpandableController controller;

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
          collapseIcon: Icons.arrow_drop_up,
          iconColor: Color(0xff6CA491),
          iconSize: 24,
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
            const Text(
              'HotFlashes',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const Icon(
              Icons.play_arrow_outlined,
              color: Color(0xff6CA491),
              size: 18,
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: 25,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff6CA491),
              ),
              child: const Center(
                child: Text(
                  '50%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        expanded: Column(
          children: [
            const Text('Symptoms Frequency and Serverity'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => RangeWidget(
                  text: 'low',
                  color: Colors.red,
                  num: index + 1,
                ),
              ),
            ),
            SizedBox(
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
                SizedBox(width: 10),
                const Text('Number of Times Reported'),
                const SizedBox(width: 20),
                const Icon(
                  Icons.error_outline,
                  color: Color(0xff6CA491),
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
