import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:olx_server/components/tab.dart';

late TabController _tabController;
// var activeTabTextStyle = const TextStyle(
//   fontSize: 16,
// );

// var inactiveTabTextStyle = const TextStyle(
//   fontSize: 13,
// );

// late TabController _tabController;

// class Tab_AppBar extends StatefulWidget with PreferredSizeWidget {
//   final Size preferredSize;

//   Tab_AppBar({Key? key})
//       : preferredSize = Size.fromHeight(56.0),
//         super(key: key);
//   @override
//   _Tab_AppBarState createState() => _Tab_AppBarState();
// }

// class _Tab_AppBarState extends State<Tab_AppBar> with TickerProviderStateMixin {
//   int _currentTab = 1;
//   Icon customIcon = const Icon(Icons.search);
//   Widget customSearchBar = const Text('OLX Server');

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(vsync: this, length: 3, initialIndex: 1);
//     _tabController.index = 1;

//     _tabController.addListener(() {
//       setState(() {
//         _currentTab = _tabController.index;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: customSearchBar,
//       automaticallyImplyLeading: true,
//       elevation: 0.7,
//       // Search Bar
//       actions: [
//         IconButton(
//           onPressed: () {
//             setState(() {
//               if (customIcon.icon == Icons.search) {
//                 customIcon = const Icon(Icons.cancel);
//                 customSearchBar = const ListTile(
//                   leading: Icon(
//                     Icons.search,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     size: 28,
//                   ),
//                   title: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'type in journal name...',
//                       hintStyle: TextStyle(
//                         color: Color.fromARGB(255, 7, 7, 7),
//                         fontSize: 18,
//                         fontStyle: FontStyle.italic,
//                       ),
//                       border: InputBorder.none,
//                     ),
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 0, 0, 0),
//                     ),
//                   ),
//                 );
//               } else {
//                 customIcon = const Icon(Icons.search);
//                 customSearchBar = const Text('My Personal Journal');
//               }
//             });
//           },
//           icon: customIcon,
//         )
//       ],
//       bottom: TabBar(
//         isScrollable: true,
//         labelStyle: activeTabTextStyle,
//         labelColor: Colors.black,
//         unselectedLabelStyle: inactiveTabTextStyle,
//         unselectedLabelColor: Colors.blueGrey,
//         indicatorColor: const Color.fromARGB(255, 238, 141, 141),
//         // tabs: const <Widget>[
//         //   Tab(
//         //     text: "Categories",
//         //   ),
//         //   Tab(
//         //     text: "Categories",
//         //   ),
//         //   Tab(
//         //     text: "Categories",
//         //   )
//         // ],
//         tabs: const [
//           TabWidget(
//             label: "Categories",
//             unreadCount: 0,
//           ),
//           TabWidget(
//             label: "Recent",
//             unreadCount: 20,
//           ),
//           TabWidget(
//             label: "Frequent",
//             unreadCount: 5,
//           ),
//         ],
//         controller: _tabController,
//       ),
//       centerTitle: true,
//     );
//   }
// }

// class Tab_Bar_View extends StatefulWidget {
//   const Tab_Bar_View({super.key});

//   @override
//   State<Tab_Bar_View> createState() => _Tab_Bar_ViewState();
// }

// class _Tab_Bar_ViewState extends State<Tab_Bar_View> {
//   @override
//   Widget build(BuildContext context) {
//     return TabBarView(
//       controller: _tabController,
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Center(
//               child: Text('Hi'),
//             ),
//           ],
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Center(
//               child: Text('Hello'),
//             ),
//           ],
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Center(
//               child: Text('Honey'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
