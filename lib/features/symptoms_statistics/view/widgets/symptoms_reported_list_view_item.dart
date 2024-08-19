import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/range_widget.dart';

class SymptomsReportedListViewItem extends StatelessWidget {
  final String name;
  final String percentage;
  final Color color;

  SymptomsReportedListViewItem({
    super.key,
    required this.name,
    required this.percentage,
    required this.color,
  });

  final ExpandableController expandableController =
      ExpandableController(initialExpanded: true);

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
        controller: expandableController,
        theme: const ExpandableThemeData(
            expandIcon: Icons.arrow_drop_down,
            collapseIcon: Icons.arrow_drop_up,
            iconColor: Color(0xff6CA491),
            iconSize: 24,
            iconPadding: EdgeInsets.all(0)),
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
              name,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 2,
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      color,
                      color,
                      color.withOpacity(.8),
                      color.withOpacity(.8),
                      color,
                      color
                    ]),
                color: const Color(0xff6CA491),
              ),
              child: Center(
                child: Text(
                  percentage,
                  style: const TextStyle(
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
                rowListItem.length,
                (index) => RangeWidget(
                  text: rowListItem[index]['title'],
                  color: rowListItem[index]['color'],
                  num: index + 1,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
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
                        fontSize: 10,
                        color: Color(0xff6CA491),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Number of Times Reported',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffa8a9a1),
                  ),
                ),
                const SizedBox(width: 20),
                const Icon(
                  Icons.error_outline,
                  size: 18,
                  color: Color(0xffccd5d2),
                ),
              ],
            ),
          ],
        ),
        collapsed: const SizedBox.shrink(),
      ),
    );
  }

  final List rowListItem = [
    {"title": "Low", "color": const Color(0xff67bba1)},
    {"title": "Moderate", "color": const Color(0xfff4e059)},
    {"title": "High", "color": const Color(0xfff09b87)},
    {"title": "Extreme", "color": const Color(0xffd6413d)},
  ];
}
