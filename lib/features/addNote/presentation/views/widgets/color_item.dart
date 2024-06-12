import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final Color color;
  const ColorItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: color,
    );
  }
}
