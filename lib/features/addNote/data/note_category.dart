import 'package:flutter/material.dart';

class NoteCategory {
  final String title;
  final String description;
  final IconData icon;
  final Color bgColor;
  final Color textColor;

  NoteCategory({
    required this.title,
    required this.description,
    required this.icon,
    required this.bgColor,
    required this.textColor,
  });
}
