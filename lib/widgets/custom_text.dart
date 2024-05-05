import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  const CustomText({
    super.key,
    required this.text,
    this.size = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Comfortaa',
        fontSize: size,
      ),
    );
  }
}