/* 
Contains: 
  - Sticky Bottom Navigation Bar
  - Greet Wish element
  - 
*/

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:olx_server/constants/themeData/change_theme_button_widget.dart';
import 'package:olx_server/screens/ProfilePage/profilePage.dart';
import 'package:olx_server/screens/Recommendations/R_screens/recommendation_home_scree.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // --------------------------------------------ALL SCREENS
  final Pages = [const RecommendationHomeScreen(), const ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page App Bar'),
          actions: const [
            ChangeThemeButtonWidget(),
          ],
        ),
        // ---------------------------------------BODY
        body: Pages[_selectedIndex],
        // ---------------------------------------BOTTOM NAVIGATION BAR
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.man, size: 30),
            // Icon(Icons.shop, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
