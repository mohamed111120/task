import 'package:flutter/material.dart';
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
          body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
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
                          color: Color(0xff8D43A2),
                        ),
                        child: Center(
                          child: Text(
                            "Symptoms statistics",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBarView(
                controller: tabController,
                children: const [
                  SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
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

