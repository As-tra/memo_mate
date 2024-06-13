
import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class CustomExtraAction extends StatelessWidget {
  final IconData icon;
  final String actionText;
  final String valueText;
  const CustomExtraAction({
    super.key,
    required this.icon,
    required this.actionText,
    required this.valueText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        actionText,
        style: Styles.textStyle15.copyWith(
          fontFamily: kInter,
          color: Colors.black,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            valueText,
            style: Styles.textStyle14.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).colorScheme.onPrimary,
            size: 15,
          ),
        ],
      ),
    );
  }
}
