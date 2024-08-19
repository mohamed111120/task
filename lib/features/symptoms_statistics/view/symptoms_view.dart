import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task/features/symptoms_statistics/riverpod/symptoms_riverpod.dart';
import 'package:task/features/symptoms_statistics/view/widgets/symptoms_tabbar_view_widget.dart';

class SymptomsView extends StatefulWidget {
  const SymptomsView({super.key});

  @override
  State<SymptomsView> createState() => _SymptomsViewState();
}

class _SymptomsViewState extends State<SymptomsView>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Consumer(
                builder: (_, WidgetRef ref, __) {
                  final provider = ref.watch(symptomsProvider);
                  return TabBar(
                      onTap: (value) {
                        value == 0
                            ? provider.changeIsSymptomsStatics(true)
                            : provider.changeIsSymptomsStatics(false);
                      },
                      controller: tabController,
                      isScrollable: false,
                      indicatorColor: Colors.transparent,
                      dividerHeight: 0,
                      tabs: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: provider.isSymptomsStatics
                                ? const Color(0xff9145a9)
                                : const Color(0xffedf1f2),
                          ),
                          child: Center(
                            child: Text(
                              "Symptoms statistics",
                              style: TextStyle(
                                color: !provider.isSymptomsStatics
                                    ? const Color(0xff48404b)
                                    : const Color(0xfff7f8fa),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: !(provider.isSymptomsStatics)
                                ? const Color(0xff9145a9)
                                : const Color(0xffedf1f2),
                          ),
                          child: Center(
                            child: Text(
                              "Symptoms Daily",
                              style: TextStyle(
                                color: provider.isSymptomsStatics
                                    ? const Color(0xff48404b)
                                    : const Color(0xfff7f8fa),
                              ),
                            ),
                          ),
                        )
                      ]);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      SingleChildScrollView(
                          // physics: NeverScrollableScrollPhysics(),
                          child: SymptomsTabBarViewWidget()),
                      Center(child: Text("details")),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
