import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  const CustomText({
    super.key,
    required this.text,
    this.size = 15,
    required this.color,
    this.weight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: weight,
        fontFamily: 'Comfortaa',
        fontSize: size,
      ),
    );
  }
}
