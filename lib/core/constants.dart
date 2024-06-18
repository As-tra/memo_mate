import 'package:flutter/material.dart';

const kTitle = 'Memo Mate';
const kInter = 'Inter';
const kComfortaa = 'Comfortaa';
const kDancingScript = 'DancingScript';
const kNoteBox = 'NoteBox';
const kAllCategories = 'All';
const double kToolBarIconsSize = 24;

List<Map<String, dynamic>> notesTypes = [
  {
    'title': 'Important',
    'descreption': 'Use free text area ,feel free to write it all.',
    'icon': Icons.lightbulb_outline,
    'bgColor': const Color(0xFFF1CDDD),
    'textColor': const Color(0xFFFB7EB6),
  },
  {
    'title': 'Personal',
    'descreption': 'Use free text area ,feel free to write it all.',
    'icon': Icons.person,
    'bgColor': const Color(0xFFD9E8FC),
    'textColor': const Color(0xFF92C1EF),
  },
  {
    'title': 'Entertainment',
    'descreption': 'Use free text area ,feel free to write it all.',
    'icon': Icons.celebration,
    'bgColor': const Color(0xFFFDE99D),
    'textColor': const Color(0xFFEAC125),
  },
  {
    'title': 'To-do-list',
    'descreption': 'Use checklist,so you won’t miss anything.',
    'icon': Icons.checklist_rtl,
    'bgColor': const Color(0xFFD0C9EB),
    'textColor': const Color(0xFFA5A0BA),
  },
  {
    'title': 'Shopping list',
    'descreption': 'Use checklist,so you won’t miss anything.',
    'icon': Icons.shopping_cart,
    'bgColor': const Color(0xFFCAE4B0),
    'textColor': const Color(0xFFA2B78D),
  },
  {
    'title': 'Other',
    'descreption': 'Use free text area ,feel free to write it all.',
    'icon': Icons.list_alt,
    'bgColor': const Color(0xFFFFEADD),
    'textColor': const Color(0xFFE6C7B3),
  },
  {
    'title': 'Goals',
    'descreption': 'Use free text area ,feel free to write it all.',
    'icon': Icons.flag,
    'bgColor': const Color(0xFFB0E9CA),
    'textColor': const Color(0xFF8FD0AD),
  },
];
