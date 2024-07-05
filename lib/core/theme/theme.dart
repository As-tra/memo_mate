import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';

ThemeData lightMode = ThemeData();

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  fontFamily: kComfortaa,
  colorScheme: const ColorScheme.dark(
    // old background(0xFF1E1E1E)
    surface: Color(0xFF000000),
    primary: Color(0xFFFFFFFF),
    onPrimary: Color(0xFF7C7C7C),
    secondary: Color(0xFFE2E2E2),
    tertiary: Color(0xFFCE3A54),
  ),
);
