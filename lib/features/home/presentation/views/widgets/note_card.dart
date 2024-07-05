import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/home/data/models/noteModel/note_model.dart';

class NoteCard extends StatelessWidget {
  final NoteModel note;
  const NoteCard({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(note.color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: Styles.textStyle15.copyWith(
              color: Colors.black,
            ),
          ),
          Text(
            note.dateOfLastEdit.toString(),
            style: Styles.textStyle10.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              note.content,
              style: Styles.textStyle15.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                note.tags.join(' | '),
                style: Styles.textStyle9.copyWith(
                  color: Colors.black,
                ),
              ),
              SvgPicture.asset(
                note.isFavorite
                    ? AssetsData.filledBlackHeartIcon
                    : AssetsData.emptyBlackHeartIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
