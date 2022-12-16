/* 
Contains: 
  - Sticky Bottom Navigation Bar
  - Greet Wish element
  - 
*/

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:olx_server/screens/HomePage/SearchBar/searchBar.dart';
import 'package:olx_server/screens/HomePage/SettingsOptions/settingsButton.dart';
import 'package:olx_server/screens/ProfilePage/profilePage.dart';
import 'package:olx_server/screens/Recommendations/R_screens/recommendation_home_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    }
    if (hour < 17) {
      return "Good Afternoon";
    }
    return "Good Evening";
  }

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // --------------------------------------------ALL SCREENS
  final Pages = [const RecommendationHomeScreen(), const ProfilePage()];
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // -----------------------------------------APP BAR
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: theme.isDarkMode == false
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 0, 0, 0),
          title: Text(
            greeting(),
            style: TextStyle(
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255)),
          ),
          actions: const [
            SearchBarButton(),
            SettingsButton(),
          ],
        ),
        // ---------------------------------------BODY
        body: Pages[_selectedIndex],
        // ---------------------------------------BOTTOM NAVIGATION BAR
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          height: 40,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: theme.isDarkMode == false
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 255, 255, 255),
            ),
            Icon(
              Icons.man,
              size: 30,
              color: theme.isDarkMode == false
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 255, 255, 255),
            ),
            // Icon(Icons.shop, size: 30),
          ],
          backgroundColor: theme.isDarkMode == false
              ? Color.fromARGB(255, 255, 255, 255)
              : Color.fromARGB(255, 0, 0, 0),
          color: theme.isDarkMode == false
              ? Color.fromARGB(255, 255, 255, 255)
              : Color.fromARGB(255, 0, 0, 0),
          buttonBackgroundColor: theme.isDarkMode == false
              ? Color.fromARGB(255, 255, 255, 255)
              : Color.fromARGB(255, 0, 0, 0),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }

  // Widget buildFloatingSearchBar() {
  //   final isPortrait =
  //       MediaQuery.of(context).orientation == Orientation.portrait;

  //   return FloatingSearchBar(
  //     hint: 'Search...',
  //     scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
  //     transitionDuration: const Duration(milliseconds: 800),
  //     transitionCurve: Curves.easeInOut,
  //     physics: const BouncingScrollPhysics(),
  //     axisAlignment: isPortrait ? 0.0 : -1.0,
  //     openAxisAlignment: 0.0,
  //     width: isPortrait ? 600 : 500,
  //     debounceDelay: const Duration(milliseconds: 500),
  //     onQueryChanged: (query) {
  //       // Call your model, bloc, controller here.
  //     },
  //     // Specify a custom transition to be used for
  //     // animating between opened and closed stated.
  //     transition: CircularFloatingSearchBarTransition(),
  //     actions: [
  //       FloatingSearchBarAction(
  //         showIfOpened: false,
  //         child: CircularButton(
  //           icon: const Icon(Icons.place),
  //           onPressed: () {},
  //         ),
  //       ),
  //       FloatingSearchBarAction.searchToClear(
  //         showIfClosed: false,
  //       ),
  //     ],
  //     builder: (context, transition) {
  //       return ClipRRect(
  //         borderRadius: BorderRadius.circular(8),
  //         child: Material(
  //           color: Colors.white,
  //           elevation: 4.0,
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: Colors.accents.map((color) {
  //               return Container(height: 112, color: color);
  //             }).toList(),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
