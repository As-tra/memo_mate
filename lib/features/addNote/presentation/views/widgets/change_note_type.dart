
import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/show_modal_bottom_sheet.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';

class ChangeNoteType extends StatelessWidget {
  const ChangeNoteType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                'Notes Types',
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
              thickness: 1.13,
            ),
          ),
        ],
      ),
    );
  }
}
