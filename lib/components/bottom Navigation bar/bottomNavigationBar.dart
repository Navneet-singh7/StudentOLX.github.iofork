import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottom_Navigation_bar extends StatefulWidget {
  int pageIndex;
  Bottom_Navigation_bar({Key? key, required this.pageIndex}) : super(key: key);
  @override
  _Bottom_Navigation_barState createState() => _Bottom_Navigation_barState();
}

class _Bottom_Navigation_barState extends State<Bottom_Navigation_bar>
    with SingleTickerProviderStateMixin {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      items: <Widget>[
        IconButton(
            onPressed: () {
              setState(() {
                widget.pageIndex = 0;
              });
            },
            icon: Icon(Icons.home, size: 30)),
        IconButton(
            onPressed: () {
              setState(() {
                widget.pageIndex = 1;
              });
            },
            icon: Icon(Icons.man, size: 30)),
        Icon(Icons.shop, size: 30),
      ],
      onTap: (index) {
        setState(() {
          widget.pageIndex = index;
          print(widget.pageIndex);
        });
      },
    );
  }
}
