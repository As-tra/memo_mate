import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_tool_bar_Icon.dart';

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
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Theme.of(context).colorScheme.primary,
          builder: (context) {
            return const GiveLabelBottomSheet();
          },
        );
      },
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        leading: Icon(
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
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}

class GiveLabelBottomSheet extends StatelessWidget {
  const GiveLabelBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 18,
        ),
        child: Column(
          children: [
            Row(
              children: [
                // CustomToolBarIcon(
                //   icon: Icons.arrow_back_ios,
                //   onpressed: () => Navigator.of(context).pop(),
                // ),
                Text(
                  'Extras',
                  style: Styles.textStyle22.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const Spacer(),
                const CustomCloseButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
