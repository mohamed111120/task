import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/symptoms_statistics/riverpod/symptoms_riverpod.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_reported_list_view_item.dart';
import 'package:task/features/symptoms_statistics/view/widgets/total_symptoms_row_item.dart';

class SymptomsFrequencyAndServerity extends StatefulWidget {
  const SymptomsFrequencyAndServerity({super.key});

  @override
  State<SymptomsFrequencyAndServerity> createState() =>
      _SymptomsFrequencyAndServerityState();
}

class _SymptomsFrequencyAndServerityState
    extends State<SymptomsFrequencyAndServerity> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final provider = ref.watch(symptomsProvider);
        return Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeIsSymptomsReported(true);
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: provider.isSymptomsReported
                          ? const Color(0xff6CA491)
                          : const Color(0xffc2c2c2),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: provider.isSymptomsReported
                        ? const Color(0xff6CA491)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Symptoms Reported",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: provider.isSymptomsReported
                              ? Colors.white
                              : const Color(0xffc2c2c2)),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  provider.changeIsSymptomsReported(false);
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: !provider.isSymptomsReported
                          ? const Color(0xff6CA491)
                          : const Color(0xffc2c2c2).withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: !provider.isSymptomsReported
                        ? const Color(0xff6CA491)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Triggers Reported",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: !provider.isSymptomsReported
                              ? Colors.white
                              : const Color(0xffc2c2c2)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (provider.isSymptomsReported)
            Container(
              color: const Color(0xfff3fcf9),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Average frequency reported\nas percentage of all",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffa1a7a5)),
                      ),
                      Spacer(),
                      Text(
                        "View all",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff8db6a8)),
                      ),
                      Icon(Icons.arrow_drop_down, color: Color(0xff8db6a8))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ...List.generate(
                    provider.cartListItem.length,
                    (index) => SymptomsReportedListViewItem(
                      name: provider.cartListItem[index]['title'],
                      percentage: provider.cartListItem[index]['percentage'],
                      color: provider.cartListItem[index]['color'],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total: 6 Symptoms 100%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 80,
                            height: 30,
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xfffafffe),
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: const Color(0xff6CA491)),
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
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TotalSymptomsRowItem(
                              color: Color(0xffdbb828),
                              text: 'the Same',
                            ),
                            TotalSymptomsRowItem(
                              color: Color(0xffde9f6c),
                              text: 'delecration',
                            ),
                            TotalSymptomsRowItem(
                              color: Color(0xffa7b7d9),
                              text: 'sign\nImportant',
                            ),
                            TotalSymptomsRowItem(
                              color: Color(0xff68b498),
                              text: 'sign\nImportant',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          if (!provider.isSymptomsReported) ...[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Triggers Reported'),
            ),
          ],
        ]);
      },
    );
  }
}
