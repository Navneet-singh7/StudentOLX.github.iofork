import 'package:flutter/material.dart';
import 'package:olx_server/constants/variables.dart';
class SampleWidget extends StatelessWidget {
  const SampleWidget({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10))),
      child: IconButton(
          onPressed: () {
            print(variables.pageIndex);
          },
          icon: const Icon(
            Icons.home,
            size: 20,
          )),
    );
  }
}
