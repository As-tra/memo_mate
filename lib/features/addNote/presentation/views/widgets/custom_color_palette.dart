import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/color_item.dart';

class CustomColorsPalette extends StatelessWidget {
  const CustomColorsPalette({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < knoteColors.length; i++)
          ColorItem(color: knoteColors[i])
      ],
    );
  }
}
