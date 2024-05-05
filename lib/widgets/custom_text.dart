import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const CustomText({
    super.key,
    required this.text,
    this.size = 15,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color == Colors.transparent ? Colors.white : Colors.black,
        fontWeight: color != Colors.transparent ? FontWeight.bold : null,
        fontFamily: 'Comfortaa',
        fontSize: size,
      ),
    );
  }
}
