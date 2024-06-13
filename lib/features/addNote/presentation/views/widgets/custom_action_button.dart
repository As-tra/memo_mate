
import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Row(
        children: [
          Icon(
            Icons.delete_outline,
            size: 27,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          Text(
            '  Delete Note',
            style: Styles.textStyle18.copyWith(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}
