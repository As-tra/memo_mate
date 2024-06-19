import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: kSnackBarColor,
        radius: 15,
        child: Icon(
          Icons.check,
          size: 14,
        ),
      ),
      title: Text(
        'Undo Success! This note still displayed on the “ Entertainment “.',
        style: Styles.textStyle14.copyWith(
          color: kSnackBarColor,
        ),
      ),
    );
  }
}