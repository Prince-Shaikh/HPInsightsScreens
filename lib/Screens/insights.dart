import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insight_screens/Screens/tabViews.dart';

class InsightsScreen extends StatefulWidget {
  const InsightsScreen({Key? key}) : super(key: key);

  @override
  _InsightsScreenState createState() => _InsightsScreenState();
}

class _InsightsScreenState extends State<InsightsScreen>
    with SingleTickerProviderStateMixin {
  late TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TabController _tabController;

    return Scaffold(
        body: NestedScrollView(
      physics: const NeverScrollableScrollPhysics(),
      headerSliverBuilder: (contxt, value) {
        return [
          SliverToBoxAdapter(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                  height: size.height * 0.15,
                  color: Colors.grey[200],
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Your listing isn't live yet - you have a few important tasks to take care of. Get Started",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 30, right: 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.06,
                          ),
                        ]))
              ]))
        ];
      },
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  "Insights",
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.only(right: size.width * .26, left: 30),
                  child: TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey[600],
                      labelPadding: EdgeInsets.only(
                          top: 0, bottom: 10, right: 0, left: 0),
                      indicatorPadding: EdgeInsets.all(0),
                      tabs: [
                        Text(
                          "Oppurtunities",
                        ),
                        Text("Stats"),
                        Text("Cleaning"),
                      ]),
                ),
              ]),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 00),
                  child: TabBarView(controller: _tabController, children: [
                    OpportunitiesView(),
                    StatsView(),
                    CleaningView(),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
