import 'package:flutter/material.dart';
import 'package:memo_mate/theme/theme.dart';

void main() {
  runApp(const MemoMate());
}

class MemoMate extends StatelessWidget {
  const MemoMate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkMode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
