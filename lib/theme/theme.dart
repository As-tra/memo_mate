import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData();

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  
  colorScheme: const ColorScheme.dark(
    background: Color(0xFF1E1E1E),
    primary: Color(0xFFDEDEDE),
    onPrimary: Color(0xFF7C7C7C),
  ),
);
