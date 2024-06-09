import 'package:flutter/material.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_tool_bar_Icon.dart';

class CustomToolBar extends StatelessWidget {
  const CustomToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_bold,
          ),
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_italic,
          ),
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_underline,
          ),
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_clear,
          ),
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_align_justify,
          ),
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_align_left,
          ),
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_align_center,
          ),
          CustomToolBarIcon(
            onpressed: () {},
            icon: Icons.format_align_right,
          ),
        ],
      ),
    );
  }
}