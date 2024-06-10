import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          'Choose a file',
          style: Styles.textStyle14.copyWith(
            fontFamily: kComfortaa,
          ),
        ),
      ),
    );
  }
}