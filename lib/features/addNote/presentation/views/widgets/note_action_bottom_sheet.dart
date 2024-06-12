import 'package:flutter/material.dart';

class NoteActionsBottomSheet extends StatelessWidget {
  const NoteActionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 21,
                right: 23,
              ),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                radius: 16,
                child: IconButton(
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    size: 15,
                    Icons.close,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
