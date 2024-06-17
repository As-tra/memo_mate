
import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';

class CustomLabelItem extends StatelessWidget {
  final String label;
  const CustomLabelItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 3,
        bottom: 3,
        left: 12,
        right: 6,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Styles.textStyle12.copyWith(
              fontFamily: kInter,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const SizedBox(width: 4),
          // here you add the function to delete the label from the cubit and rebuild the ui
          CustomCloseButton(
            onpressed: () {},
            radius: 14,
          ),
        ],
      ),
    );
  }
}
