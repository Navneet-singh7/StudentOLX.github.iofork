import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:olx_server/constants/variables.dart';
import 'package:olx_server/screens/Recommendations/R_screens/components/sampleWidget.dart';
import 'package:provider/provider.dart';

class RecommendationHomeScreen extends StatefulWidget {
  const RecommendationHomeScreen({super.key});

  @override
  State<RecommendationHomeScreen> createState() =>
      _RecommendationHomeScreenState();
}

class _RecommendationHomeScreenState extends State<RecommendationHomeScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Provide the [TabController]
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      color: theme.isDarkMode == false
                          ? Colors.white
                          : Colors.black,
                      child: TabBar(
                        // indicator: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(50),
                        //   color: Colors.greenAccent,
                        // ),
                        indicator: const UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 170, 166, 166),
                                width: 8.0),
                            insets: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                        automaticIndicatorColorAdjustment: true,
                        indicatorSize: TabBarIndicatorSize.tab,
                        splashBorderRadius: BorderRadius.circular(50),
                        labelColor: theme.isDarkMode == false
                            ? Colors.black
                            : Colors.white,
                        // labelColor: Theme.of(context).l,
                        controller: _tabController,
                        unselectedLabelColor: theme.isDarkMode == false
                            ? const Color.fromARGB(255, 85, 83, 83)
                            : Colors.grey,
                        tabs: const [
                          Tab(
                            child: Text("Categories"),
                          ),
                          Tab(
                            child: Text("Recent"),
                          ),
                          Tab(
                            child: Text("Trending"),
                          ),
                        ],
                      ),
                    )),
                // Sample pages
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      SampleWidget(
                        label: 'FIRST PAGE',
                        color: Colors.red.shade200,
                      ),
                      SampleWidget(
                        label: 'SECOND PAGE',
                        color: Colors.blue.shade100,
                      ),
                      SampleWidget(
                        label: 'THIRD PAGE',
                        color: Colors.orange.shade200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// SegmentedTabControl(
//                     // Customization of widget
//                     radius: const Radius.circular(3),
//                     backgroundColor: Theme.of(context).unselectedWidgetColor,
//                     indicatorColor: Theme.of(context).indicatorColor,
//                     tabTextColor: Colors.black45,
//                     selectedTabTextColor: Colors.white,
//                     squeezeIntensity: 2,

//                     height: 45,
//                     tabPadding: const EdgeInsets.symmetric(horizontal: 8),
//                     textStyle: Theme.of(context).textTheme.bodyText1,
//                     // Options for selection
//                     // All specified values will override the [SegmentedTabControl] setting
//                     tabs: [
//                       SegmentTab(
//                         label: 'ACCOUNT',
//                         // For example, this overrides [indicatorColor] from [SegmentedTabControl]
//                         color: Colors.red.shade200,
//                       ),
//                       SegmentTab(
//                         label: 'HOME',
//                         backgroundColor: Colors.blue.shade100,
//                         selectedTextColor: Colors.black45,
//                         textColor: Colors.black26,
//                       ),
//                       const SegmentTab(label: 'NEW'),
//                     ],
//                   ),