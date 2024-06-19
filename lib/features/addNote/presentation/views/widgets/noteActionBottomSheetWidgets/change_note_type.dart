import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/logic/show_modal_bottom_sheet.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_close_button.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/noteActionBottomSheetWidgets/note_type_list.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
              thickness: 1.13,
            ),
          ),
          const NoteTypeListView(),
        ],
      ),
    );
  }
}
