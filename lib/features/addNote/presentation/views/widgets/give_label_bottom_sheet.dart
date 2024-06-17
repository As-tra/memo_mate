import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/show_modal_bottom_sheet.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                CustomCloseButton(
                  onpressed: () {
                     Navigator.of(context).pop();
                     customShowModalBottmoSheet(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text(
              'Label Name',
              style: Styles.textStyle14.copyWith(
                fontFamily: kComfortaa,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 6),
            TextFormField(
              style: Styles.textStyle14.copyWith(
                fontFamily: kComfortaa,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              decoration: InputDecoration(
                hintText: 'Example:Important,etc........',
                hintStyle: Styles.textStyle14.copyWith(
                  color: const Color(0xFFC8C5CB),
                ),
                border: _buildBorder(),
                enabledBorder: _buildBorder(),
                focusedBorder: _buildBorder(),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Press “Enter” on Keyboread  to create another lebel.',
              style: Styles.textStyle9.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFC8C5CB)),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
