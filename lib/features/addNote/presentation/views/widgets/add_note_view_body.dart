import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        ],
      ),
    );
  }
}


class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}