import 'package:flutter/material.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/add_note_app_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_tool_bar.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/image_placeholder.dart';

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

