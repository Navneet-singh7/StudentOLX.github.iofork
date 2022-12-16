import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:olx_server/screens/HomePage/SettingsOptions/settingsPage.dart';
import 'package:provider/provider.dart';

class SettingsButton extends StatefulWidget {
  const SettingsButton({super.key});

  @override
  State<SettingsButton> createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);

    return Container(
      child: IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingPage()));
        },
        icon: const Icon(Icons.settings),
        color: theme.isDarkMode == false
            ? Color.fromARGB(255, 0, 0, 0)
            : Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }

  Widget SettingScreen() {
    return Scaffold();
  }
}
