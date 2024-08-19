import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/symptoms_statistics/riverpod/symptoms_riverpod.dart';

class SymptomsDashboardRow extends StatelessWidget {
  const SymptomsDashboardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Symptoms Dashboard",
          style: TextStyle(
            color: Color(0xff362b39),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 40,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: const Color(0xff9145a9)),
          ),
          child: Consumer(
            builder: (_, WidgetRef ref, __) {
              var provider = ref.watch(symptomsProvider);
              return DropdownButton(
                padding: EdgeInsets.zero,
                value: provider.dropDownValue,
                underline: const SizedBox.shrink(),
                items: const [
                  DropdownMenuItem(
                    value: 'week',
                    child: Text(
                      'week',
                      style: TextStyle(color: Color(0xff9145a9)),
                    ),
                  ),
                  DropdownMenuItem(
                      value: 'day',
                      child: Text(
                        'day',
                        style: TextStyle(color: Color(0xff9145a9)),
                      )),
                  DropdownMenuItem(
                      value: 'hour',
                      child: Text(
                        'Hour',
                        style: TextStyle(color: Color(0xff9145a9)),
                      )),
                ],
                onChanged: (value) {
                  provider.changeDropDownValue(value ?? "week");
                },
              );
            },
          ),
        )
      ],
    );
  }
}
