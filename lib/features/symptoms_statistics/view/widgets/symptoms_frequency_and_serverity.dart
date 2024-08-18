import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_reported.dart';
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
    return Container(
      color:  Color(0xff6CA491).withOpacity(.1),
      child: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: TabBar(
              controller: tabController,
              isScrollable: false,
              indicatorColor: Colors.transparent,
              dividerHeight: 0,
              tabs: List.generate(
                2,
                (index) {
                  return Tab(
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff6CA491),
                      ),
                      child: const Center(
                        child: Text(
                          "Symptoms Reported",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            // ToDo: Error to Set Height
            child: SizedBox(
              height: 20000,
              child: Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: SymptomsReported(),
                    ),
                    SingleChildScrollView(
                        child: Center(
                          child: Text('data'),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total: 6 Symptoms 100%',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xff6CA491)),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TotalSymptomsRowItem(
                        color: Color(0xff6CA491),
                        text: 'the Same',
                      ),
                      TotalSymptomsRowItem(
                        color: Color(0xff6CA491),
                        text: 'the Same',
                      ),
                      TotalSymptomsRowItem(
                        color: Color(0xff6CA491),
                        text: 'the Same',
                      ),
                      TotalSymptomsRowItem(
                        color: Color(0xff6CA491),
                        text: 'the Same',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
