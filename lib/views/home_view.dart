import 'package:flutter/material.dart';
import 'package:memo_mate/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          ktitle,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontFamily: 'DancingScript',
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
