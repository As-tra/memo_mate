import 'package:flutter/material.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/add_note_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddNoteViewBody(),
    );
  }
}