import 'package:flutter/material.dart';

class BagButton extends StatelessWidget {
  const BagButton({Key? key, this.numberOfItemsPurchased = 0})
      : super(key: key);
  final int? numberOfItemsPurchased;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        IconButton(
          icon: const Icon(
            Icons.add_to_drive,
          ),
          onPressed: () {},
        ),
        if (numberOfItemsPurchased != 0)
          Container(
            margin: const EdgeInsets.only(right: 4, top: 8),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white)),
            // child:
            //     numberOfItemsPurchased.toString().text.sm.makeCentered().p(2),
          ),
      ],
    );
  }
}
