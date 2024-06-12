import 'package:flutter/material.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/note_action_bottom_sheet.dart';

class NoteActionsBar extends StatelessWidget {
  const NoteActionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(
            'Created: Mar 1, 2024',
            style: Styles.textStyle12.copyWith(
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.lock,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Theme.of(context).colorScheme.primary,
              context: context,
              builder: (context) {
                return const NoteActionsBottomSheet();
              },
            );
          },
          icon: const Icon(
            Icons.more_vert,
            size: 30,
          ),
        ),
      ],
    );
  }
}

