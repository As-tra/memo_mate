import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomSnackBar extends StatelessWidget {
  final String type;
  const CustomSnackBar({super.key, required this.type});

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
      title: RichText(
        text: TextSpan(
          text: 'Saved Successfully!',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xFF1F7F40),
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: ' This note will be displayed on the ',
              style: Styles.textStyle14.copyWith(
                color: kSnackBarColor,
              ),
            ),
            TextSpan(
              text: '“ $type “.',
              style: Styles.textStyle14.copyWith(
                color: const Color(0xFF1F7F40),
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
