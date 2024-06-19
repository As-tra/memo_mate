import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/data/note_type.dart';

class NoteTypeListViewItem extends StatelessWidget {
  final NoteType type;
  const NoteTypeListViewItem({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      tileColor: type.bgColor,
      title:  Text(
        type.title,
        style: Styles.textStyle16,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          type.description,
          style: Styles.textStyle12.copyWith(
            fontFamily: kInter,
            color: type.textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      leading:  CircleAvatar(
        radius: 23,
        backgroundColor: type.textColor,
        child: Icon(
          type.icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
