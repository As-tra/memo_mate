import 'package:flutter/material.dart';

class NoteType {
  final String title;
  final String description;
  final IconData icon;
  final Color bgColor;
  final Color textColor;

  NoteType({
    required this.title,
    required this.description,
    required this.icon,
    required this.bgColor,
    required this.textColor,
  });

  factory NoteType.fromJson(Map json) {
    return NoteType(
        title: json['title'],
        description: json['descreption'],
        icon: json['icon'],
        bgColor: json['bgColor'],
        textColor: json['textColor']);
  }
}
