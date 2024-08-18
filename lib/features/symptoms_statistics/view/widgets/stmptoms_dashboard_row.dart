import 'package:flutter/material.dart';

class SymptomsDashboardRow extends StatelessWidget {
  const SymptomsDashboardRow({super.key});

  @override
  Widget build(BuildContext context) {
    String dropDownValue = 'week';

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Symptoms Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 32,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: const Color(0xff8D43A2)),
          ),
          child: DropdownButton(
            padding: EdgeInsets.zero,
            value: dropDownValue,
            underline: const SizedBox.shrink(),
            items: [
              const DropdownMenuItem(
                child: Text(
                  'week',
                  style: TextStyle(color: Color(0xff8D43A2)),
                ),
                value: 'week',
              ),
              const DropdownMenuItem(child: Text('day'), value: 'day'),
              const DropdownMenuItem(child: Text('Hour'), value: 'hour'),
            ],
            onChanged: (value) {
              dropDownValue = value.toString();
            },
          ),
        )
      ],
    );
  }
}
