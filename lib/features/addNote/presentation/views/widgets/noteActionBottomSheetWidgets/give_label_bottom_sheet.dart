import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/show_modal_bottom_sheet.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/add_label_form.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_label_builder.dart';

class GiveLabelBottomSheet extends StatelessWidget {
  const GiveLabelBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    customShowModalBottmoSheet(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
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
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
            const AddLabelForm(),
            const SizedBox(height: 28),
            CustomLabelsBuilder(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
