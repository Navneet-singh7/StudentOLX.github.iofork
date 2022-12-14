import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String label;
  final int unreadCount;

  const TabWidget({Key? key, required this.label, required this.unreadCount,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(label,
        ),
        const SizedBox(
          width: 8,
        ),
        Visibility(
          visible: unreadCount !=null && unreadCount > 0,
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey[300],
            radius: 10,
            child: Text(
              unreadCount.toString(),
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}