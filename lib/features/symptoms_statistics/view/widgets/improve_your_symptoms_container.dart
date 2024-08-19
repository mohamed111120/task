import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/riverpod/symptoms_riverpod.dart';

class ImproveYourSymptomsContainer extends StatelessWidget {
  final SymptomsProvider provider;
  final int index;
  const ImproveYourSymptomsContainer(
      {super.key, required this.provider, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        provider.selectImproveListItem(
            index, !provider.improveListItem[index]['isSelected']);
      },
      child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xfff1f1f1)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff6CA491),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://img.freepik.com/free-vector/cute-cool-boy-dabbing-pose-cartoon-vector-icon-illustration-people-fashion-icon-concept-isolated_138676-5680.jpg?t=st=1724071204~exp=1724074804~hmac=a1c74e8e93bf7bdc13798addca626d45c8b3871c1a1ca7a6e12ae00caca6dcc4&w=740"))),
              ),
              Text(
                provider.improveListItem[index]['title'],
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: provider.improveListItem[index]['color']),
              ),
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: provider.improveListItem[index]['isSelected']
                        ? const Color(0xff56a48e)
                        : Colors.white,
                    shape: CircleBorder(
                      side: BorderSide(
                        color: provider.improveListItem[index]['isSelected']
                            ? const Color(0xff56a48e)
                            : const Color(0xff979797),
                      ),
                    ),
                  ),
                  child: provider.improveListItem[index]['isSelected']
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : null)
            ],
          )),
    );
  }
}
