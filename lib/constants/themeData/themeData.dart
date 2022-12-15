// import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:olx_server/constants/colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    print(isOn);
    notifyListeners();
  }
}

class AppTheme {
  //

  static lightTheme() => ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: LightThemeColors.scaffoldBackGroundColor,
        unselectedWidgetColor: LightThemeColors.unSelectedTabBarColor,
        indicatorColor: LightThemeColors.selectedTabBarColor,
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.black, unselectedLabelColor: Colors.black),
      );

  static darkTheme() => ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: DarkThemeColors.scaffoldBackGroundColor,
        unselectedWidgetColor: DarkThemeColors.unSelectedTabBarColor,
        indicatorColor: DarkThemeColors.selectedTabBarColor,
        tabBarTheme: const TabBarTheme(
            labelColor: Colors.white, unselectedLabelColor: Colors.black),
      );
}
