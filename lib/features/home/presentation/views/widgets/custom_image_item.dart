import 'package:flutter/material.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: note.imagePath.isNotEmpty,
      child: AspectRatio(
        aspectRatio: .8,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(note.imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}