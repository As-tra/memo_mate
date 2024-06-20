import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomActionButton extends StatelessWidget {
  final IconData icon;
  final String string;
  final void Function() onpressed;
  const CustomActionButton({
    super.key,
    required this.icon,
    required this.string,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpressed,
      icon: Row(
        children: [
          Icon(
            icon,
            size: 27,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          const SizedBox(width: 13),
          Text(
            string,
            style: Styles.textStyle18.copyWith(
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
