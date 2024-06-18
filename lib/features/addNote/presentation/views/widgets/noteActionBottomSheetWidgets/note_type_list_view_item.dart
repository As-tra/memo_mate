import 'package:flutter/material.dart';
import 'package:memo_mate/core/constants.dart';
import 'package:memo_mate/core/utils/styles.dart';

class NoteTypeListViewItem extends StatelessWidget {
  const NoteTypeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      tileColor: Color(0xFFF1CDDD),
      title: const Text(
        'Important',
        style: Styles.textStyle16,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          'Use free text area ,feel free to write it all.',
          style: Styles.textStyle12.copyWith(
            fontFamily: kInter,
            color: Color(0xFFFB7EB6),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      leading: const CircleAvatar(
        radius: 23,
        backgroundColor: Color(0xFFFB7EB6),
        child: Icon(
          Icons.lightbulb_outline,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
