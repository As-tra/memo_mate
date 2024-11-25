import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String text;
  final VoidCallback ontap;
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(
            fontFamily: kComfortaa,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
