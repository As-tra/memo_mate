import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/add_note_app_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_tool_bar.dart';

class AddNoteViewBody extends StatelessWidget {
  const AddNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 34,
        right: 11,
        left: 11,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: AddNoteAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
            child: CustomToolBar(),
          ),
          ImagePlaceholder(),
        ],
      ),
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: Theme.of(context).colorScheme.primary.withAlpha(155),
      radius: const Radius.circular(12),
      dashPattern: const [22, 12],
      child: Container(
        height: MediaQuery.of(context).size.height * .28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.background.withOpacity(0.4),
        ),
        child: const Column(
          children: [
            CircleAvatar(
              radius: 27,
              child: Icon(Icons.image),
            )
          ],
        ),
      ),
    );
  }
}
