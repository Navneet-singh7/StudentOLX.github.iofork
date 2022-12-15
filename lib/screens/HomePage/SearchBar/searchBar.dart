import 'package:flutter/material.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:olx_server/screens/HomePage/SearchBar/searchBarWidget.dart';
import 'package:provider/provider.dart';
// import 'package:olx_server/screens/HomePage/SearchBar/searchBarWidget.dart';

// class ChangeThemeButtonWidget extends StatelessWidget {
//   const ChangeThemeButtonWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     return Switch.adaptive(
//         value: themeProvider.isDarkMode,
//         onChanged: (value) {
//           final provider = Provider.of<ThemeProvider>(context, listen: false);
//           provider.toggleTheme(value);
//           print("1");
//         });
//   }
// }

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return CustomAnimSearchBar(
        // color: Colors.transparent,
        width: 400,
        iconcolor: theme.isDarkMode == false
            ? Color.fromARGB(255, 0, 0, 0)
            : Color.fromARGB(255, 255, 255, 255),
        autoFocus: true,
        color: theme.isDarkMode == false
            ? Color.fromARGB(255, 255, 255, 255)
            : Color.fromARGB(255, 0, 0, 0),
        closeSearchOnSuffixTap: true,

        style: const TextStyle(color: Colors.grey),
        // prefixIcon: const Icon(Icons.search),
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        });
  }
}
// IconButton(
// //         onPressed: () {
// //           Navigator.push(context,
// //               MaterialPageRoute(builder: (context) => searchBarWidget()));
// //         },
// //         icon: const Icon(Icons.search));
//   Widget 
//   }
// }
