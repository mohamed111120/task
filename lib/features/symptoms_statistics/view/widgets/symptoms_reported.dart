import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_reported_list_view_item.dart';
import 'package:task/features/symptoms_statistics/view/widgets/total_symptoms_row_item.dart';

import '../../model/symptoms_reported_list_view_item_model.dart';

class SymptomsReported extends StatelessWidget {
  const SymptomsReported({super.key});

  @override
  Widget build(BuildContext context) {
    List controllers = List.generate(
      symptomsReportedListViewItemModel.length,
      (index) => ExpandableController(initialExpanded: true),
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  'Average Symptom Frequency reported as a percentage of all',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              Spacer(),
              DropdownButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff6CA491),
                ),
                style: TextStyle(
                    color: Color(0xff6CA491),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                value: 'view all',
                underline: SizedBox.shrink(),
                items: [
                  DropdownMenuItem(
                    child: Text('view all'),
                    value: 'view all',
                  ),
                ],
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: symptomsReportedListViewItemModel.length,
          itemBuilder: (context, index) {
            return SymptomsReportedListViewItem(
              model: symptomsReportedListViewItemModel[index],
              controller: controllers[index],
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total: 6 Symptoms  100%',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 80,
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color:  Colors.grey.withOpacity(.3)),
                  ),
                  child: const Center(
                    child: Text(
                      'Legendo',
                      style: TextStyle(
                        color: Color(0xff6CA491),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TotalSymptomsRowItem(
                    color: Color(0xffBEA740),
                    text: 'the Same',
                  ),
                  TotalSymptomsRowItem(
                    color: Color(0xffE8A66F),
                    text: 'detrication',
                  ),
                  TotalSymptomsRowItem(
                    color: Color(0xffAFBED8),
                    text: 'significant improvement',
                  ),
                  TotalSymptomsRowItem(
                    color: Color(0xff6CA491),
                    text: 'slight improvement',
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
